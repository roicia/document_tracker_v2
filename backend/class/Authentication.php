<?php


class Authentication
{
    private $db;

    function __construct($db)
    {
        $this->db = $db;
    }
    function LoginAdmin($username, $password)
    {
        $sql = "select * from users where username = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $username, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $fetch = $stmt->fetch(PDO::FETCH_ASSOC);

            if (password_verify($password, $fetch['password'])) {
                $_SESSION['username'] = $username;
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    function LoginDepartment($username, $password)
    {
        $sql = "select * from department where username = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $username, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $fetch = $stmt->fetch(PDO::FETCH_ASSOC);
            if (password_verify($password, $fetch['password'])) {
                $value = $username . '|' . $fetch['code'] . '|' . $fetch['department'];
                $this->createCookie('__user', $value);
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    function createCookie($name, $value)
    {
        $expiration = time() + (365 * 24 * 60 * 60); // 1 year in seconds
        setcookie($name, $value, $expiration, "/");
    }
    function Session($name, $type = 'cookie')
    {
        if ($type === 'cookie') {
            if (!isset($_COOKIE[$name])) {
                return false;
            }
        }
        if ($type === 'session') {
            if (!isset($_SESSION[$name])) {
                return false;
            }
        }
    }
    function Logout($name, $session_type = 'cookie')
    {
        if ($session_type === 'coookie') {
            $expiration = time() - 3600;
            setcookie($name, '', $expiration, "/");

            return true;
        } elseif ($session_type === 'session') {
            session_destroy();

            return true;
        }
    }
}

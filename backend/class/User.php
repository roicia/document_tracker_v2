<?php


class User
{
    private $db;


    function __construct($db)
    {
        $this->db = $db;
    }






    function All()
    {
        $sql = "select * from users";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }

        return $results;
    }






    function Add($username, $password)
    {
        $sql = "insert into users (username, password) values (?,?)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $username, PDO::PARAM_STR);
        $stmt->bindValue(2, password_hash($password, PASSWORD_BCRYPT), PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }







    function Remove($id)
    {
        $sql = "delete from users where id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }







    function Info($username)
    {

        $sql = "select * from users where username = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $username, PDO::PARAM_STR);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }






    function Update($old_username, $username, $hashed_password, $current_password, $new_password)
    {
        if (!empty($current_password)) {
            if (password_verify($current_password, $hashed_password)) {
                $sql = "update users set username = ?, password = ? where username = ?";
                $stmt = $this->db->prepare($sql);
                $stmt->bindParam(1, $username, PDO::PARAM_STR);
                $stmt->bindValue(2, password_hash($new_password, PASSWORD_BCRYPT), PDO::PARAM_STR);
                $stmt->bindParam(3, $old_username, PDO::PARAM_STR);
                $stmt->execute();
                return true;
            } else {
                return 'Password dont match.';
            }
        } else {
            $sql = "update users set username = ? where username = ?";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(1, $username, PDO::PARAM_STR);
            $stmt->bindParam(2, $old_username, PDO::PARAM_STR);
            $stmt->execute();
            return true;
        }
    }
}

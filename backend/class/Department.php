<?php


class Department
{
    private $db;

    function __construct($db)
    {
        $this->db = $db;
    }

    function All()
    {
        $sql = "select * from department order by department asc";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $results = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }

        return $results;
    }

    function Info($value, $column = "username")
    {
        $sql = "select * from department where $column = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $value, PDO::PARAM_STR);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }


    function Remove($id)
    {
        $sql = "delete from department where id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $id, PDO::PARAM_INT);
        $stmt->execute();


        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }



    function Update($id, $code, $department, $username, $password)
    {
        if (!empty($password)) {
            $sql = "update department set code = ?, department = ?, username = ?, password = ? where id = ?";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(1, $code, PDO::PARAM_STR);
            $stmt->bindParam(2, $department, PDO::PARAM_STR);
            $stmt->bindParam(3, $username, PDO::PARAM_STR);
            $stmt->bindValue(4, password_hash($password, PASSWORD_BCRYPT), PDO::PARAM_STR);
            $stmt->bindParam(5, $id, PDO::PARAM_STR);
            $stmt->execute();
        } else {
            $sql = "update department set code = ?, department = ?, username = ? where id = ?";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(1, $code, PDO::PARAM_STR);
            $stmt->bindParam(2, $department, PDO::PARAM_STR);
            $stmt->bindParam(3, $username, PDO::PARAM_STR);
            $stmt->bindParam(4, $id, PDO::PARAM_STR);
            $stmt->execute();
        }

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }



    function UpdatedProfile($code, $username, $hashed_password, $current_password, $new_password)
    {
        if (!empty($current_password)) {
            if (password_verify($current_password, $hashed_password)) {
                $sql = "update department set username = ?, password = ? where code = ?";
                $stmt = $this->db->prepare($sql);
                $stmt->bindParam(1, $username, PDO::PARAM_STR);
                $stmt->bindValue(2, password_hash($new_password,  PASSWORD_BCRYPT), PDO::PARAM_STR);
                $stmt->bindParam(3, $code, PDO::PARAM_STR);
                $stmt->execute();
                return true;
            } else {
                return 'Current password does not match.';
            }
        } else {
            $sql = "update department set username = ? where code = ?";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(1, $username, PDO::PARAM_STR);
            $stmt->bindParam(2, $code, PDO::PARAM_STR);
            $stmt->execute();
            return true;
        }
    }
    function Add($code, $department, $username, $password)
    {
        $sql = "insert into department (code, department, username, password) values (?,?,?,?)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $code, PDO::PARAM_STR);
        $stmt->bindParam(2, $department, PDO::PARAM_STR);
        $stmt->bindParam(3, $username, PDO::PARAM_STR);
        $stmt->bindValue(4, password_hash($password, PASSWORD_BCRYPT), PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
}

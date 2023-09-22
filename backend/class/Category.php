<?php

class Category
{
    private $db;


    function __construct($db)
    {
        $this->db = $db;
    }

    function All()
    {
        $sql = "select * from category";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    function One($value, $column = 'id')
    {
        $sql = "select * from category where $column = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $value, PDO::PARAM_STR);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }



    function Update($id, $document, $details, $max_time = 7)
    {
        $sql = "update category set category = ?, details = ?, max_time = ? where id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $document, PDO::PARAM_STR);
        $stmt->bindParam(2, $details, PDO::PARAM_STR);
        $stmt->bindParam(3, $max_time, PDO::PARAM_STR);
        $stmt->bindParam(4, $id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
    function Add($category, $details, $max_time = 7)
    {
        $sql = "insert into category (category, details, max_time) values (?,?,?)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $category, PDO::PARAM_STR);
        $stmt->bindParam(2, $details, PDO::PARAM_STR);
        $stmt->bindParam(3, $max_time, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
    function Remove($id)
    {
        $sql = "delete from category where id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
}

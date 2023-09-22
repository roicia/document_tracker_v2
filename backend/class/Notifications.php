<?php


class Notification
{
    private $db;

    function __construct($db)
    {
        $this->db = $db;
    }

    function All()
    {
        $sql = "select * from notifications ORDER BY created DESC";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $results = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }

        return $results;
    }



    function One($code)
    {
        $result = null;

        foreach ($this->All() as $row) {
            if ($code === $row['code']) {
                $result = $row;
            }
        }
    }



    function Add($code, $details, $status = 0)
    {
        $sql = "insert into notifications (code, details, status) values (?,?,?)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $code, PDO::PARAM_STR);
        $stmt->bindParam(2, $details, PDO::PARAM_STR);
        $stmt->bindParam(3, $status, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
}

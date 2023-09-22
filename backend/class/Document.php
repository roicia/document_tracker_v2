<?php

class Document
{
    private $db;


    function __construct($db)
    {
        $this->db = $db;
    }

    function All()
    {
        $sql = "select * from documents";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }
    function DepartmentDocument($code)
    {
        $results = array();
        foreach ($this->All() as $key => $row) {
            if ($code === $row['sender']) {
                $results[] = $row;
            }
        }
        return $results;
    }

    function One($reference)
    {
        $sql = "select * from documents where reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $reference, PDO::PARAM_STR);
        $stmt->execute();

        $fetch = $stmt->fetch(PDO::FETCH_ASSOC);
        return $fetch;
    }

    function OneByDepartment($code, $reference)
    {
        $sql = "select * from documents where sender = ? and reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $code, PDO::PARAM_STR);
        $stmt->bindParam(2, $reference, PDO::PARAM_STR);
        $stmt->execute();

        $fetch = $stmt->fetch(PDO::FETCH_ASSOC);
        return $fetch;
    }

    function Update($reference, $document, $type, $details)
    {
        $sql = "update documents set document = ?, type = ?, details = ? where reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $document, PDO::PARAM_STR);
        $stmt->bindParam(2, $type, PDO::PARAM_STR);
        $stmt->bindParam(3, $details, PDO::PARAM_STR);
        $stmt->bindParam(4, $reference, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
    function Add($reference, $sender, $document, $type, $details)
    {
        $sql = "insert into documents (reference, sender, document, type, details, status, date) values (?,?,?,?,?,?,?)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $reference, PDO::PARAM_STR);
        $stmt->bindParam(2, $sender, PDO::PARAM_STR);
        $stmt->bindParam(3, $document, PDO::PARAM_STR);
        $stmt->bindParam(4, $type, PDO::PARAM_STR);
        $stmt->bindParam(5, $details, PDO::PARAM_STR);
        $stmt->bindValue(6, 'Ongoing', PDO::PARAM_STR);
        $stmt->bindValue(7, date('Y-m-d'), PDO::PARAM_STR);
        $stmt->execute();



        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }
    function Remove($reference)
    {
        $sql = "delete from documents where reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $reference, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }

    function Done($reference)
    {
        $sql = "update documents set status = ? where reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(1, 'Done', PDO::PARAM_STR);
        $stmt->bindParam(2, $reference, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }

    function Hide($id)
    {
        $sql = "update documents set hidden = ? where id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(1, '1', PDO::PARAM_INT);
        $stmt->bindParam(2, $id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt) {
            return true;
        } else {
            return false;
        }
    }

    function track($reference)
    {
        $sql = "select * from tracker where reference = ?  order by created asc";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $reference, PDO::PARAM_STR);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    function trackByDepartment($sender,  $reference)
    {
        $sql = "select * from tracker where sender = ? and reference = ?  order by created asc";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $sender, PDO::PARAM_STR);
        $stmt->bindParam(2, $reference, PDO::PARAM_STR);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    function trackByReciever($department,  $reference)
    {
        $sql = "select * from tracker where department = ? and reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $department, PDO::PARAM_STR);
        $stmt->bindParam(2, $reference, PDO::PARAM_STR);
        $stmt->execute();

        $rowCount = $stmt->rowCount();
        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        return [
            'count' => $rowCount,
            'data' => json_encode($data),
        ];
    }

    function Scanned($code, $reference, $remarks, $action)
    {
        $sql = "select * from documents where reference = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $reference, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $data = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($data['type'] === 'Memo') {
                if ($action === 'In') {
                    $insert = "insert into tracker (reference, type, sender, department, status, updated) values (?,?,?,?,?,?)";
                    $stmt_insert = $this->db->prepare($insert);
                    $stmt_insert->bindParam(1, $reference, PDO::PARAM_STR);
                    $stmt_insert->bindParam(2, $data['type'], PDO::PARAM_STR);
                    $stmt_insert->bindParam(3, $data['sender'], PDO::PARAM_STR);
                    $stmt_insert->bindParam(4, $code, PDO::PARAM_STR);
                    $stmt_insert->bindValue(5, 'Done', PDO::PARAM_STR);
                    $stmt_insert->bindValue(6, date('Y-m-d H:i:s'), PDO::PARAM_STR);
                    $stmt_insert->execute();

                    return true;
                }
            } else {
                if ($action === 'In') {
                    $insert = "insert into tracker (reference, type, sender, department, status) values (?,?,?,?,?)";
                    $stmt_insert = $this->db->prepare($insert);
                    $stmt_insert->bindParam(1, $reference, PDO::PARAM_STR);
                    $stmt_insert->bindParam(2, $data['type'], PDO::PARAM_STR);
                    $stmt_insert->bindParam(3, $data['sender'], PDO::PARAM_STR);
                    $stmt_insert->bindParam(4, $code, PDO::PARAM_STR);
                    $stmt_insert->bindValue(5, 'Pending', PDO::PARAM_STR);
                    $stmt_insert->execute();

                    return true;
                } else {
                    $update = "update tracker set status = ?, note = ?, updated = ? where department = ? and reference = ?";
                    $stmt_update = $this->db->prepare($update);
                    $stmt_update->bindValue(1, 'Done', PDO::PARAM_STR);
                    $stmt_update->bindParam(2, $remarks, PDO::PARAM_STR);
                    $stmt_update->bindValue(3, date('Y-m-d H:i:s'), PDO::PARAM_STR);
                    $stmt_update->bindParam(4, $code, PDO::PARAM_STR);
                    $stmt_update->bindParam(5, $reference, PDO::PARAM_STR);
                    $stmt_update->execute();

                    return true;
                }
            }
        } else {
            return 'No document exist.';
        }
    }


    function Recieved($department)
    {
        $sql = "select * from tracker where department = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(1, $department, PDO::PARAM_STR);
        $stmt->execute();

        $results = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }

        return $results;
    }
}

<?php
$title = "Recieved";
include '../templates/header.php' ?>




<?php if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['delete'])) {
        $delete = $User->Remove($_GET['id']);

        if ($delete === true) {
            alert('User deleted.', './');
        } else {
            alert('Somthing went wrong', './');
        }
    }
} ?>






<!--  Header End -->
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Received</h5>
            <!-- <div class="mb-4"><a href="add.php" class="btn btn-primary">Add User</a></div> -->
            <table class="table text-nowrap mb-0 align-middle" id="dataTable">
                <thead class="text-dark fs-4">
                    <tr>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">#</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Reference</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Type</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Name</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">From</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Punch In</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Punch Out</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Date</h6>
                        </th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    $count = 0;
                    foreach ($Document->Recieved($code) as $row) {

                        $punch_in = !empty($row['created']) ? date('h:i A', strtotime($row['created'])) : '';
                        $punch_out = !empty($row['updated']) ? date('h:i A', strtotime($row['updated'])) : '';
                        $date = !empty($row['created']) ? date('Y-m-d', strtotime($row['created'])) : '';

                        $SENDER_department = $Department->Info($row['sender'])['department'];
                        $document_name  = $Document->One($row['reference'])['document'];


                        $count++;
                        echo "<tr>";
                        echo "<td>" . $count . "</td>";
                        echo "<td>" . $row['reference'] . "</td>";
                        echo "<td>" . $row['type'] . "</td>";
                        echo "<td>" . $document_name . "</td>";
                        echo "<td>" . $row['sender'] . "</td>";
                        echo "<td>" . $punch_in . "</td>";
                        echo "<td>" . $punch_out  . "</td>";
                        echo "<td>" . $date . "</td>";

                        echo "</tr>";
                    }


                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


















<?php include '../templates/footer.php' ?>
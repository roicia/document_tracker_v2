<?php
$title = "Archive";
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
            <h5 class="card-title fw-semibold mb-4">Archive</h5>
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
                            <h6 class="fw-semibold mb-0">Department</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Date</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Action</h6>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $count = 0;
                    foreach ($Document->All() as $row) {
                        if ($row['status'] !== 'Done') {
                            continue;
                        }
                        $count++;
                        echo "<tr>";
                        echo "<td>" . $count . "</td>";
                        echo "<td>" . $row['reference'] . "</td>";
                        echo "<td>" . $row['type'] . "</td>";
                        echo "<td>" . $row['sender'] . "</td>";
                        echo "<td>" . $row['date'] . "</td>";
                        echo "<td><a href='" . domainlnk() . "/portal/admin/documents/track.php?reference=" . $row['reference'] . "' class='btn btn-primary'>Details</a></td>";
                        echo "</tr>";
                    }

                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


















<?php include '../templates/footer.php' ?>
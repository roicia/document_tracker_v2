<?php
$title = "Documents";
include '../templates/header.php' ?>





<?php if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['delete'])) {
        $delete = $Document->Remove($_GET['reference']);
        if ($delete) {
            alert('Document Deleted', 'index.php');
        } else {
            alert('Something went wrong', 'index.php');
        }
    }
}  ?>



<?php if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['done'])) {
        $done = $Document->Done($_GET['reference']);
        if ($done) {
            alert('Document Statue Updated', 'index.php');
        } else {
            alert('Something went wrong', 'index.php');
        }
    }

    if (isset($_GET['hide'])) {
        $hide = $Document->Hide($_GET['id']);
        if ($hide) {
            alert('Document is hidden', 'index.php');
        } else {
            alert('Something went wrong', 'index.php');
        }
    }
}  ?>








<!--  Header End -->
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Documents</h5>
            <div class="mb-4"><a href="add.php" class="btn btn-primary">Add Document</a></div>
            <table class="table text-nowrap mb-0 align-middle" id="dataTable">
                <thead class="text-dark fs-4">
                    <tr>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">#</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Department</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Reference No.</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Document Name</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Type</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Status</h6>
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
                    foreach ($Document->All() as $row) :


                        if ($row['hidden'] === 1) {
                            continue;
                        }


                        $count++;




                        $bg_color = $row['status'] === 'Done' ? 'bg-success' : 'bg-primary';
                        $hide = $row['status'] === 'Done' ? 'hidden' : null;

                    ?>
                        <tr>
                            <td class="border-bottom-0">
                                <h6 class="fw-semibold mb-0"><?php echo $count ?></h6>
                            </td>
                            <td class="border-bottom-0">
                                <p class="mb-0 fw-normal"><?php echo $row['sender'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <p class="mb-0 fw-normal"><?php echo $row['reference'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <p class="mb-0 fw-normal"><?php echo $row['document'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <h6 class="fw-normal mb-0 fs-4"><?php echo $row['type'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <div class="d-flex align-items-center gap-2">
                                    <span class="badge <?= $bg_color ?> rounded-3 fw-semibold"><?php echo $row['status'] ?></span>
                                </div>
                            </td>
                            <td class="border-bottom-0">
                                <h6 class="fw-normal mb-0 fs-4"><?php echo $row['date'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <div class="dropdown">
                                    <button class="btn btn-secondary" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="ti ti-menu"></i>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <?php if ($row['status'] !== 'Done') { ?>
                                            <li><a onclick="return confirm('Are your sure?')" class="dropdown-item" href="?done&reference=<?= $row['reference'] ?>">Done</a></li>
                                            <li><a class="dropdown-item" href="edit.php?reference=<?= $row['reference'] ?>">Edit</a></li>
                                            <li><a class="dropdown-item" href="details.php?reference=<?= $row['reference'] ?>">Print QR</a></li>
                                            <li><a class="dropdown-item" href="track.php?reference=<?= $row['reference'] ?>">Track</a></li>
                                            <li><a onclick=" return confirm('Are you sure?')" class="dropdown-item" href="index.php?delete&reference=<?= $row['reference'] ?>">Delete</a></li>
                                        <?php  } else {
                                            echo '<li><a href="?hide&id=' . $row['id'] . '" class="dropdown-item">Hide</a></li>';
                                            echo '<li><a class="dropdown-item" href="track.php?reference=' . $row['reference'] . '">Details</a></li>';
                                        } ?>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach;  ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


















<?php include '../templates/footer.php' ?>
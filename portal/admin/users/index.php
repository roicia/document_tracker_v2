<?php
$title = "Users";
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
            <h5 class="card-title fw-semibold mb-4">Users</h5>
            <div class="mb-4"><a href="add.php" class="btn btn-primary">Add User</a></div>
            <table class="table text-nowrap mb-0 align-middle" id="dataTable">
                <thead class="text-dark fs-4">
                    <tr>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">#</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Username</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Date created</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Action</h6>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $count = 0;
                    foreach ($User->All() as $key => $row) {
                        $count++; ?>

                        <tr id="<?= $key ?>">
                            <td><?= $count ?></td>
                            <td><?= $row['username'] ?></td>
                            <td><?= $row['created'] ?></td>
                            <td class="border-bottom-0">
                                <div class="dropdown">
                                    <button class="btn btn-secondary" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="ti ti-menu"></i>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li><a class="dropdown-item" href="edit.php?username=<?= $row['username'] ?>">Edit</a></li>
                                        <li><a onclick=" return confirm('Are you sure?')" class="dropdown-item" href="?delete&id=<?= $row['id'] ?>">Delete</a></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>

                    <?php  } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


















<?php include '../templates/footer.php' ?>
<?php
$title = "Category";
include '../templates/header.php' ?>





<?php if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['delete'])) {
        $delete = $Category->Remove($_GET['id']);
        if ($delete) {
            alert('Category Deleted', 'index.php');
        } else {
            alert('Something went wrong', 'index.php');
        }
    }
}  ?>







<!--  Header End -->
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Category</h5>
            <div class="mb-4"><a href="add.php" class="btn btn-primary">Add Category</a></div>
            <table class="table text-nowrap mb-0 align-middle" id="dataTable">
                <thead class="text-dark fs-4">
                    <tr>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">#</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Category</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Details</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Max Time</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Date Created</h6>
                        </th>
                        <th class="border-bottom-0">
                            <h6 class="fw-semibold mb-0">Action</h6>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $count = 0;
                    foreach ($Category->All() as $row) : $count++;

                    ?>
                        <tr>
                            <td class="border-bottom-0">
                                <h6 class="fw-semibold mb-0"><?php echo $count ?></h6>
                            </td>
                            <td class="border-bottom-0">
                                <p class="mb-0 fw-normal"><?php echo $row['category'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <p class="mb-0 fw-normal"><?php echo $row['details'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <h6 class="fw-normal mb-0 fs-4"><?php echo $row['max_time'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <h6 class="fw-normal mb-0 fs-4"><?php echo $row['created'] ?></p>
                            </td>
                            <td class="border-bottom-0">
                                <div class="dropdown">
                                    <button class="btn btn-secondary" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="ti ti-menu"></i>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li><a class="dropdown-item" href="edit.php?id=<?= $row['id'] ?>">Edit</a></li>
                                        <li><a onclick=" return confirm('Are you sure?')" class="dropdown-item" href="?delete&id=<?= $row['id'] ?>">Delete</a></li>
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
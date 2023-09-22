         <?php
            $title = "Edit User";
            include '../templates/header.php' ?>


         <?php


            $data = $User->Info($_GET['username'] ?? '');
            $hashed_password = $data['password'] ?? '';


            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['edit_department'])) {
                    $update = $User->Update($_GET['username'] ?? '', $_POST['username'], $hashed_password, $_POST['current_password'], $_POST['password']);

                    if ($update === true) {
                        alert('User updated.', './');
                    } else {
                        alert($update, 'edit.php?username=' . $_GET['username'] . '');
                    }
                }
            }


            ?>



         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Edit User</h5>
                     <form method="post">
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Username <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="username" value="<?= $data['username'] ?? '' ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Current Password <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="current_password" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">New Password <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="password" required>
                         </div>
                         <button type="submit" name="edit_department" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
         <?php
            $title = "Add Department";
            include '../templates/header.php' ?>




         <?php

            $data = $Department->Info($_GET['id'] ?? null, 'id');



            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['update_department'])) {
                    $add = $Department->Update($_POST['id'], $_POST['code'], $_POST['department'], $_POST['username'], $_POST['password']);
                    if ($add) {
                        alert('Department Updated.', 'index.php');
                    } else {
                        alert('Something went wrong.', 'add.php');
                    }
                }
            }


            ?>



         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Edit Department</h5>
                     <form method="post" action="edit.php">
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">ID <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="id" value="<?= $data['id'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Department <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="department" value="<?= $data['department'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Code <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="code" placeholder="example: CITRMU, CTO" value="<?= $data['code'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Username <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="username" value="<?= $data['username'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Password</label>
                             <input type="text" class="form-control" name="password">
                         </div>
                         <button type="submit" name="update_department" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
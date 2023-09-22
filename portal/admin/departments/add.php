         <?php
            $title = "Add Department";
            include '../templates/header.php' ?>


         <?php

            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['add_department'])) {
                    $add = $Department->Add($_POST['code'], $_POST['department'], $_POST['username'], $_POST['password']);
                    if ($add) {
                        alert('Department Added.', 'index.php');
                    } else {
                        alert('Something went wrong.', 'add.php');
                    }
                }
            }


            ?>



         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Add Department</h5>
                     <form method="post" action="add.php">
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Department <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="department" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Code <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="code" placeholder="example: CITRMU, CTO" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Username <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="username" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Password <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="password" required>
                         </div>
                         <button type="submit" name="add_department" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
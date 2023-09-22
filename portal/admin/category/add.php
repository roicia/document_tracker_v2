         <?php
            $title = "Add Category";
            include '../templates/header.php' ?>


         <?php

            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['add_category'])) {
                    $add = $Category->Add($_POST['category'], $_POST['details'], $_POST['max_time']);
                    if ($add) {
                        alert('Category Added.', 'index.php');
                    } else {
                        alert('Something went wrong.', 'add.php');
                    }
                }
            }


            ?>


         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Add Category</h5>
                     <form method="post" action="add.php">
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Category <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="category" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Details <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="details" />
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Max Time <span class="text-danger">*</span></label>
                             <input type="number" class="form-control" name="max_time" required>
                         </div>
                         <button type="submit" name="add_category" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
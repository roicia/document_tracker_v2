         <?php
            $title = "Edit Category";
            include '../templates/header.php' ?>


         <?php


            $data = $Category->One($_GET['id'] ?? null);




            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['add_category'])) {
                    $add = $Category->Update($_POST['id'], $_POST['category'], $_POST['details'], $_POST['max_time']);
                    if ($add) {
                        alert('Category Updated.', 'index.php');
                    } else {
                        alert('Something went wrong.', 'add.php');
                    }
                }
            }


            ?>



         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Edit Category</h5>
                     <form method="post" action="edit.php">
                         <div class="mb-3" hidden>
                             <label for="exampleInputEmail1" class="form-label">ID <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="id" value="<?= $data['id'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Category <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="category" value="<?= $data['category'] ?>" required>
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Details</label>
                             <input type="text" class="form-control" name="details" value="<?= $data['details'] ?>">
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Max Time <span class="text-danger">*</span></label>
                             <input type="number" class="form-control" name="max_time" value="<?= $data['max_time'] ?>" required>
                         </div>
                         <button type="submit" name="add_category" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
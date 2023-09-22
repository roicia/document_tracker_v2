         <?php
            $title = "Edit Document";
            include '../templates/header.php' ?>


         <?php

            $data = $Document->One($_GET['reference'] ?? null);

            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                if (isset($_POST['update_document'])) {
                    $update = $Document->Update($_POST['reference'], $_POST['document'], $_POST['type'], $_POST['details']);
                    if ($update) {
                        alert('Document Updated.', './');
                    } else {
                        alert(
                            'Something went wrong.',
                            'edit.php?reference=' . $_POST['reference'] . ''
                        );
                    }
                }
            }


            ?>



         <div class="container-fluid">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title fw-semibold mb-4">Edit Document</h5>
                     <form method="post" action="edit.php">
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Reference <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="reference" value="<?= $data['reference'] ?>">
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Document <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="document" value="<?= $data['document'] ?>">
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label">Details <span class="text-danger">*</span></label>
                             <input type="text" class="form-control" name="details" value="<?= $data['details'] ?>">
                         </div>
                         <div class="mb-3">
                             <label for="exampleInputEmail1" class="form-label require">Type</label>
                             <select name="type" id="type" required>
                                 <option value="">--select--</option>
                                 <?php
                                    foreach ($Category->All() as $row) {
                                        $selected = $data['type'] === $row['category'] ? 'selected' : null;
                                        echo "<option $selected value='" . $row['category'] . "'>" . $row['category'] . "</option>";
                                    }  ?>
                             </select>
                         </div>
                         <button type="submit" name="update_document" class="btn btn-primary">Submit</button>
                         <button type="button" onclick="history.back()" class="btn btn-danger">Close</button>
                     </form>
                 </div>
             </div>
         </div>
         <?php include '../templates/footer.php' ?>
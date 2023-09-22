      <?php
        $title = "Settings";
        include '../templates/header.php'  ?>

      <?php

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST['update_settings'])) {
                $new_username = $_POST['username'];
                $current_password = $_POST['current_password'];
                $new_password = $_POST['new_password'];

                $update_info = $User->Update($username, $new_username, $hashed_password, $current_password, $new_password);
                if ($update_info === true) {
                    return alert('Profile updated.', './');
                } else {
                    return alert($update_info, './');
                }
            }
        }

        ?>




      <div class="container-fluid">
          <h5 class="card-title fw-semibold mb-4">Settings</h5>
          <div class="card">
              <div class="card-body">
                  <form method="post" action="index.php">
                      <div class="mb-3">
                          <label for="username" class="form-label">Username</label>
                          <input type="text" class="form-control" id="username" name="username" value="<?= $username ?>" required>
                      </div>
                      <div class="mb-3">
                          <label for="current_password" class="form-label">Current Password</label>
                          <input type="text" class="form-control" id="current_password" name="current_password">
                      </div>
                      <div class="mb-3">
                          <label for="new_password" class="form-label">New Password</label>
                          <input type="text" class="form-control" id="new_password" name="new_password">
                      </div>
                      <div class="mb-3">
                          <label for="confirm_password" class="form-label">Confirm Password</label>
                          <input type="text" class="form-control" id="confirm_password" name="confirm_password">
                      </div>
                      <button type="submit" name="update_settings" class="btn btn-primary">Submit</button>
                  </form>
              </div>
          </div>
      </div>
      <?php include '../templates/footer.php'  ?>
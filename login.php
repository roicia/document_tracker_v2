<?php
include 'backend/config/connection.php';
include 'backend/functions/autoload.php';
include 'backend/functions/functions.php';


session_start();


$Auth = new Authentication($pdo);
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['login']) && !isset($_GET['admin'])) {

        $login = $Auth->LoginDepartment($_POST['username'], $_POST['password']);
        if ($login === true) {

            if (isset($_GET['redirect'])) {
                if ($_GET['redirect'] === 'scanned') {
                    redirect('scanned.php?reference=' . $_GET['reference'] . '');
                } elseif ($_GET['redirect'] === 'scanner') {
                    redirect('portal/department/scanner/index.php');
                }
            } else {
                alert('Welcome back ' . $_POST['username'] . '.', 'portal/department/dashboard/index.php');
            }
        } else {
            alert('Username or password is invalid ', 'login.php');
        }
    }

    if (isset($_POST['login']) && isset($_GET['admin'])) {
        $login = $Auth->LoginAdmin($_POST['username'], $_POST['password']);
        if ($login === true) {
            alert('Welcome back ' . $_POST['username'] . '.', 'portal/admin/dashboard/index.php');
        } else {
            alert('Username or password is invalid ', 'login.php?admin');
        }
    }
}


?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document Tracker | Login</title>
    <link rel="shortcut icon" type="image/png" href="../assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="../assets/css/styles.min.css" />
</head>

<body>
    <!--  Body Wrapper -->
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">
        <div class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
            <div class="d-flex align-items-center justify-content-center w-100">
                <div class="row justify-content-center w-100">
                    <div class="col-md-8 col-lg-6 col-xxl-3">
                        <div class="card mb-0">
                            <div class="card-body">
                                <a href="" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                    <img src="assets/images/logos/favicon.png" width="100" alt="">
                                </a>
                                <p class="text-center">City Goverment Of Imus</p>
                                <form method="POST">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Username</label>
                                        <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-4">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" class="form-control" name="password" id="exampleInputPassword1">
                                    </div>
                                    <!-- <div class="d-flex align-items-center justify-content-between mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input primary" type="checkbox" value="" id="flexCheckChecked" checked>
                                            <label class="form-check-label text-dark" for="flexCheckChecked">
                                                Remeber this Device
                                            </label>
                                        </div>
                                        <a class="text-primary fw-bold" href="./index.html">Forgot Password ?</a>
                                    </div> -->
                                    <button type="submit" name="login" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2">Sign In</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
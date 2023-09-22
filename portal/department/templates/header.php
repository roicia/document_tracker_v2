<?php
<<<<<<< HEAD
error_reporting(0);
=======

>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
include $_SERVER['DOCUMENT_ROOT'] . '/backend/config/connection.php';
include $_SERVER['DOCUMENT_ROOT'] . '/backend/functions/functions.php';
include $_SERVER['DOCUMENT_ROOT'] . '/backend/functions/autoload.php';

$Document = new Document($pdo);
$Category = new Category($pdo);
$Auth = new Authentication($pdo);
$Department = new Department($pdo);





// LOGOUT SECTION
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['logout'])) {
        $logout = $Auth->Logout('__user', $_GET['session']);
        if ($logout) {
            redirect(domainlnk() . '/login.php');
        }
    }
}








// USER SESSION OR INFORMATION
if ($Auth->Session('__user') === false) {
    // IF NO SESSION REDIRECT TO LOGIN PAGE
    alert('Session already expired.', domainlnk() . '/login.php');
} else {
    // IF HAS SESSION GET THE VALUE OF COOKIE
    $cookie = explode('|', $_COOKIE['__user']);
    $code = $cookie[1];

    $info = $Department->Info($code, 'code');
    $username = $info['username'];
    $department = $info['department'];
    $hashed_password = $info['password'];
}















?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $title ?? null ?> | Document Tracker</title>
    <link rel="shortcut icon" type="image/png" href="<?= domainlnk() ?>/assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="<?= domainlnk() ?>/assets/css/styles.min.css" />
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
</head>

<body>
    <!--  Body Wrapper -->
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">
        <!-- Sidebar Start -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div>
                <div class="brand-logo">
                    <a href="<?= domainlnk() ?>" class="text-nowrap logo-img">
                        <center> <img class="mt-2" src="<?= domainlnk() ?>/assets/images/logos/favicon.png" width="100" alt="" /> </center>
                    </a>
                    <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                        <i class="ti ti-x fs-8"></i>
                    </div>
                </div>
                <!-- Sidebar navigation-->
                <?php include 'sidebar.php'  ?>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!--  Sidebar End -->
        <!--  Main wrapper -->
        <div class="body-wrapper">
            <!--  Header Start -->
            <header class="app-header">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <ul class="navbar-nav">
                        <li class="nav-item d-block d-xl-none">
                            <a class="nav-link sidebartoggler nav-icon-hover" id="headerCollapse" href="javascript:void(0)">
                                <i class="ti ti-menu-2"></i>
                            </a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link nav-icon-hover" href="javascript:void(0)">
                                <i class="ti ti-bell-ringing"></i>
                                <div class="notification bg-primary rounded-circle"></div>
                            </a>
                        </li> -->
                    </ul>
                    <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
                        <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
                            <li class="nav-item dropdown">
                                <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="ti ti-user"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
                                    <div class="message-body">
                                        <!-- <a href="#under_development" class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-user fs-6"></i>
                                            <p class="mb-0 fs-3">My Profile</p>
                                        </a> -->
                                        <!-- <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-mail fs-6"></i>
                                            <p class="mb-0 fs-3">My Account</p>
                                        </a>
                                        <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-list-check fs-6"></i>
                                            <p class="mb-0 fs-3">My Task</p>
                                        </a> -->
                                        <a id="logoutBtn" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <script>
                var logoutButton = document.getElementById('logoutBtn');

                logoutButton.addEventListener('click', Logout);

                function Logout() {
                    var logout = document.cookie = "__user=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

                    if (logout) {
                        window.location.href = '<?= domainlnk() ?>/login.php';
                    }
                }
            </script>
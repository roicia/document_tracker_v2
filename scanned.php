<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/images/logos/favicon.png" type="image/x-icon">
    <title>Document Tracker | Scanned</title>
    <style>
    body {
        background-color: #f5f7fa;
        margin-top: 20px;
    }

    .card {
        margin-bottom: 24px;
        -webkit-box-shadow: 0 2px 4px rgb(126 142 177 / 10%);
        box-shadow: 0 2px 4px rgb(126 142 177 / 10%);
    }

    .card {
        position: relative;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0 solid #eaedf1;
        border-radius: .25rem;
    }

    .activity-wid {
        margin-left: 16px;
    }

    .mb-0 {
        margin-bottom: 0 !important;
    }

    .list-unstyled {
        padding-left: 0;
        list-style: none;
    }

    .activity-wid .activity-list {
        position: relative;
        padding: 0 0 33px 30px;
    }

    .activity-border:before {
        content: "";
        position: absolute;
        height: 38px;
        border-left: 3px dashed #eaedf1;
        top: 40px;
        left: 0;
    }

    .activity-wid .activity-list .activity-icon {
        position: absolute;
        left: -20px;
        top: 0;
        z-index: 2;
    }

    .avatar-sm {
        height: 2.5rem;
        width: 2.5rem;
    }

    .media {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start;
    }

    .me-3 {
        margin-right: 1rem !important;
    }

    .font-size-15 {
        font-size: 15px !important;
    }

    .font-size-14 {
        font-size: 14px !important;
    }

    .text-muted {
        color: #74788d !important;
    }

    .text-end {
        text-align: right !important;
    }

    .font-size-13 {
        font-size: 13px !important;
    }

    .avatar-title {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        height: 100%;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        width: 100%;
    }

    .bg-soft-primary {
        background-color: rgba(82, 92, 229, .25) !important;
    }

    .bg-soft-success {
        background-color: rgba(35, 197, 143, .25) !important;
    }
<<<<<<< HEAD
=======
    </style>
    <style>
    .dropbtn {
        background-color: #04AA6D;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropbtn:hover,
    .dropbtn:focus {
        background-color: #3e8e41;
    }

    #myInput {
        box-sizing: border-box;
        background-image: url('searchicon.png');
        background-position: 14px 12px;
        background-repeat: no-repeat;
        font-size: 16px;
        padding: 14px 20px 12px 45px;
        border: none;
        border-bottom: 1px solid #ddd;
    }

    #myInput:focus {
        outline: 3px solid #ddd;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f6f6f6;
        min-width: 230px;
        overflow: auto;
        border: 1px solid #ddd;
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown a:hover {
        background-color: #ddd;
    }

    .show {
        display: block;
    }
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
    </style>
</head>

<?php

include $_SERVER['DOCUMENT_ROOT'] . '/backend/config/connection.php';
include $_SERVER['DOCUMENT_ROOT'] . '/backend/functions/functions.php';
include $_SERVER['DOCUMENT_ROOT'] . '/backend/functions/autoload.php';

$Document = new Document($pdo);
$Category = new Category($pdo);
$Auth = new Authentication($pdo);
$Department = new Department($pdo);
$Notification = new Notification($pdo);



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
    redirect('login.php?redirect=scanned&reference=' . $_GET['reference'] . '');
} else {

    // IF HAS SESSION GET THE VALUE OF COOKIE
    $cookie = explode('|', $_COOKIE['__user']);
    $code = $cookie[1];

    $info = $Department->Info($code, 'code');
    $username = $info['username'];
    $department = $info['department'];
    $hashed_password = $info['password'];


<<<<<<< HEAD



=======
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
    if (isset($_GET['reference'])) {

        $statusCount = $Document->trackByReciever($code, $_GET['reference'])['count'];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $reference = $_GET['reference'];

            if ($_POST['action'] === 'In') {
                $in = $Document->Scanned($code, $reference, '', 'In');
                redirect('scanned.php?reference=' . $_GET['reference'] . '');
            } else {
                $out = $Document->Scanned($code, $reference, $_POST['remarks'], 'Out');
<<<<<<< HEAD
=======
                $add_notification = $Notification->Add($code, $_POST['remarks']);
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
                redirect('portal/department/scanner/');
            }
        }
    } else {
        echo "No document.";
    }
}



?>

<body>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
<<<<<<< HEAD
        <a class="navbar-brand" href="#"><?= $code  ?></a>
=======
        <a class="navbar-brand" href="#"><?= $code ?></a>
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" id="logoutBtn">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    <script>
    var logoutButton = document.getElementById('logoutBtn');

<<<<<<< HEAD

    logoutButton.addEventListener('click', Logout);

    function Logout() {
        var logout = document.cookie = "__user=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

=======
    logoutButton.addEventListener('click', Logout);

    function Logout() {
        var logout = document.cookie = "__user=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
        if (logout) {
            window.location.href = '<?= domainlnk() ?>/login.php';
        }
    }
    </script>


    <?php
    $track_data = $Document->trackByDepartment($code, $_GET['reference']);
    $docu_data = $Document->One($_GET['reference']);

    ?>

    <div class="container-fluid mt-4">
        <form method="post" action="scanned.php?reference=<?= $_GET['reference'] ?>">
            <button type="submit" class="btn btn-primary" name="action" id="in" value="In">Punch In</button>
            <?php if ($docu_data['type'] !== 'Memo') { ?>
            <button type="button" class="btn btn-warning" data-toggle='modal' id="out" data-target='#note'>Update
                Status</button> <?php }  ?>
        </form>
        <script>
        var statusCount = <?= $statusCount ?>;
        var inBtn = document.getElementById('in');
        var outBtn = document.getElementById('out');

<<<<<<< HEAD
    <div class="container-fluid mt-4">
        <form method="post" action="scanned.php?reference=<?= $_GET['reference'] ?>">
            <button type="submit" class="btn btn-primary" name="action" id="in" value="In">Punch In</button>
            <?php if ($docu_data['type'] !== 'Memo') { ?> <button type="button" class="btn btn-primary"
                data-toggle='modal' id="out" data-target='#note'>Punch
                Out</button> <?php }  ?>
        </form>
        <script>
        var statusCount = <?= $statusCount ?>;
        var inBtn = document.getElementById('in');
        var outBtn = document.getElementById('out');

=======
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
        if (statusCount > 0) {
            inBtn.disabled = true;
            outBtn.disabled = false;
        } else {
            inBtn.disabled = false;
            outBtn.disabled = true;
        }
        </script>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <h4 class="header-title mb-4">Recent Track</h4>
                <ul class="list-unstyled activity-wid mb-0">
                    <li class="activity-list activity-border">
                        <div class="activity-icon avatar-sm">
                            <img src="assets/images/logos/favicon.png" class="avatar-sm rounded-circle" alt="">
                        </div>
                        <div class="media">
                            <div class="me-3">
                                <h5 class="font-size-15 mb-1"><?= $docu_data['document'] ?> FROM</h5>
                                <p class="text-muted font-size-14 mb-0"><?= $docu_data['date'] ?></p>
                            </div>

                            <div class="media-body">
                                <div class="text-end d-none d-md-block">
                                    <p class="text-muted font-size-13 mt-2 pt-1 mb-0"><i
                                            class="fa fa-calendar font-size-15 text-primary"></i>
                                        <?= getTimeAgoString($docu_data['date']) ?></p>
                                </div>
                            </div>

                        </div>
                    </li>


                    <?php
                    $count = 0;
                    $has_warning_document_time = null;
                    $alert_days_of_delay = null;
                    foreach ($Document->track($_GET['reference']) as $key => $row) {
                        $count++;
                        $row_count = count($Document->track($_GET['reference']));

                        $in = date('F d Y / h:i A', strtotime($row['created']));
                        $out = !empty($row['updated']) ? date('F d Y / h:i A', strtotime($row['updated'])) : 'Pending';
                        $time = 'IN: ' . $in . ' <br> <span>Status:' . $row['note'] . '</span>  <br>  ' . 'OUT: ' .  $out;

                        $category_max_time = $Category->One($row['type'], 'category')['max_time'];

                        $department = $row['department'];
                        $date_in = 'IN: ' . date('d F Y', strtotime($row['created']));
                        $in = date('F d Y / h:i A', strtotime($row['created']));
                        $out = !empty($row['updated']) ? date('F d Y / h:i A', strtotime($row['updated'])) : 'Pending';
                        $time = 'IN: ' . $in . ' <br> <span>Status: ' . $row['note'] . '</span>  <br>  ' . 'OUT: ' .  $out;

                        $status_class = $row['status'] === 'Done' ? 'active' : null;
                        $status_icon = $row['status'] === 'Done' ? 'fa fa-check' : 'fa fa-clock';

                        $current_document_time  = dayInterval($row['created']);
                        $check_if_has_delay = createdUpdatedIterval($row['created'], $row['updated']);

                        $type = $row['type'];


                        if ($row['status'] === 'Pending') {
                            if ($current_document_time > $category_max_time) {
                                $has_warning_document_time = 'bg-danger';
                                $late_days_count = $current_document_time - $category_max_time;
                                $day = $late_days_count > 1 ? 'days delay.' : 'day delay.';
                                $alert_days_of_delay = $late_days_count . ' ' . $day;
                            }
                        }
                        if ($row['status'] === 'Done') {

                            $remarksBtn = "";

                            if ($check_if_has_delay > $category_max_time) {
                                $has_warning_document_time = 'bg-danger';
                                $late_days_count = $check_if_has_delay - $category_max_time;
                                $day = $late_days_count > 1 ? 'days delay.' : 'day delay.';
                                $alert_days_of_delay = $late_days_count . ' ' . $day;
                            }
                        }


                    ?>
                    <li class="activity-list <?= $count !== $row_count ? 'activity-border' : null; ?>  ">
                        <div class="activity-icon avatar-sm">
                            <span
                                class="avatar-title bg-soft-success <?= $has_warning_document_time   ?>  text-success rounded-circle">
                                <i class="fa fa-building font-size-16"></i>
                            </span>
                        </div>
                        <div class="media">
                            <div class="me-3">
                                <h5 class="font-size-15 mb-1">
                                    <?= $Department->Info($row['department'])['department']  ?></h5>
                                <p class="text-muted font-size-14 mb-0"><?= $time ?></p>
                                <p class="text-muted font-size-14 mb-0"><?= $alert_days_of_delay ?></p>
                            </div>

                            <div class="media-body">
                                <div class="text-end d-none d-md-block">
                                    <p class="text-muted font-size-13 mt-2 pt-1 mb-0"><i
                                            class="fa fa-calendar font-size-15 text-primary"></i>
                                        <?= !empty($row['created']) ? getTimeAgoString(date('Y-m-d', strtotime($row['created']))) : '' ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php }  ?>
                </ul>
            </div>
        </div>
    </div>




    <!-- 
    <?php //if (isset($_GET['backToScanner'])) {  
    ?>
        <script>
            function backtoScanner() {
                history.back();
            }
            setTimeout(backtoScanner, 2000); // This will log "Hello, world!" after a 2-second delay
        </script>
    <?php  //} 
    ?>

 -->




    <!-- Modal -->
    <div class="modal fade" id="note" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="scanned.php?reference=<?= $_GET['reference'] ?>" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Remarks</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
<<<<<<< HEAD
=======
                        <label for="">Notif to</label>
                        <select name="" id="" class="form-control">
                            <?php foreach ($Department->All() as $row) {
                                echo "<option value='" . $row['department'] . "'>" . $row['department'] . "</option>";
                            }  ?>
                        </select>
                        <br>
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
                        <textarea class="form-control" name="remarks" id="remarks" cols="30" rows="10"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<<<<<<< HEAD
                        <button type="submit" class="btn btn-primary" name="action" value="Out">Punch Out</button>
=======
                        <button type="submit" class="btn btn-primary" name="action" value="Out">Submit</button>
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2
                    </div>
                </div>
            </form>
        </div>
    </div>












<<<<<<< HEAD

=======
    <script>
    /* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    function filterFunction() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        div = document.getElementById("myDropdown");
        a = div.getElementsByTagName("a");
        for (i = 0; i < a.length; i++) {
            txtValue = a[i].textContent || a[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
            } else {
                a[i].style.display = "none";
            }
        }
    }
    </script>
>>>>>>> 5cf9127c598ba6c113c8aa9131d8e4df807f0bf2





</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
</script>

</html>
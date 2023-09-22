<?php
include '../../../backend/config/connection.php';
include '../../../backend/functions/functions.php';
include '../../../backend/functions/autoload.php';

$Document = new Document($pdo);
$data = $Document->One($_GET['reference']);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <title>Print</title>
</head>

<body>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .receipt {
            width: 500px;
            border: 1px;
            padding: 0;
            margin: 0 auto;
        }

        .header {
            text-align: center;
            margin-bottom: 10px;
        }

        .item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        table,
        tr,
        td {
            border: none;
        }

        .qr-code {
            text-align: center;
            margin-top: 20px;
        }

        @media print {
            .no-print {
                display: none;
            }
        }
    </style>
    <?php

    $reference = null;
    $sender = null;
    $type = null;
    $date = null;
    $details = null;
    $link = null;


    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        if (isset($_GET['reference'])) {
            $reference = $_GET['reference'];
            $sender = $data['sender'];
            $type = $data['type'];
            $date = date('d F Y h:i a', strtotime($data['created']));
            $details = $data['details'];
            $name = $data['document'];

            $link = qrCodeLink($reference);
        } else {
            echo "You do not have access.";
        }
    } else {
        echo "You do not have access.";
    }

    ?>

    <?php if (strtolower($type) === 'letter') {  ?>
        <div class="container-fluid mt-4">
            <div class="receipt">
                <div class="qr-code fixed-bottom" style="margin-left: 580px">
                    <?php generateQRCode(qrCodeLink($reference), 140) ?>
                </div>
            </div>
        </div>
    <?php  } else {  ?>



        <div class="container-fluid mt-4">
            <div class="receipt">
                <div class="header">
                    <h4><?= $type ?></h4>
                </div>
                <div style="text-align: center;">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th>Reference</th>
                                <th>From</th>
                                <th>Date / Time</th>
                            </tr>
                            <tr>
                                <td><?= $reference ?></td>
                                <td><?= $sender ?></td>
                                <td><?= $date ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="qr-code">
                    <?php generateQRCode(qrCodeLink($reference), 250) ?>
                </div>
            </div>
        </div>
    <?php   } ?>
    <!-- <button class="no-print" onclick="window.print()">Print</button> -->
</body>
<script>
    // Function to close the window
    function closeWindow() {
        window.location.href = 'index.php';
    }

    // Check if the browser supports the beforeprint event
    if (window.matchMedia) {
        const mediaQueryList = window.matchMedia('print');

        // Listen for the beforeprint event
        mediaQueryList.addListener(event => {
            if (!event.matches) {
                closeWindow(); // Close the window when exiting the print dialogue
            }
        });
    }

    // Print the page
    window.print();
</script>

</html>
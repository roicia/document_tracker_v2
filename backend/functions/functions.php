<?php

function domainlnk()
{
    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https://' : 'http://';
    $domain = $_SERVER['HTTP_HOST'];
    $link = $protocol . $domain;

    return $link;
}
function alert($message, $url)
{
    echo "<script> alert('" . $message . "');  window.location.href = '" . $url . "'; </script>";
}
function consoleLog($value, $type = 'log')
{
    echo "<script> console." . $type . "('" . $value . "') </script>";
}
function generateQRCode($value, $size = 350)
{
    $root = domainlnk();

    echo
    '<script src="https://cdn.jsdelivr.net/npm/qrious/dist/qrious.min.js"></script>';

    echo
    "<canvas id='qr-code'></canvas>";

    echo
    "<input type='hidden' id='value' value='$value' />";



    echo
    "<script>
    var input = document.getElementById('value').value;
    const canvas = document.getElementById('qr-code');

        const qr = new QRious({
            element: canvas,
            size: '$size',
            value: input
        });
        
        const logoImage = new Image();
        logoImage.src = '$root/assets/img/icons/imus-logo.png';

        logoImage.onload = function() {
        const logoSize = qr.size * 0.2;
        const logoX = (qr.size - logoSize) / 2;
        const logoY = (qr.size - logoSize) / 2;

        qr.canvas.getContext('2d').drawImage(logoImage, logoX, logoY, logoSize, logoSize);
        };
    </script>";
}
function qrCodeLink($reference)
{
    return domainlnk() . "/scanned?reference=$reference";
}
function redirect($url)
{
    echo "<script> window.location.href = '" . $url . "' </script>";
}
function dayInterval($date)
{
    // Date created
    $dateCreated = new DateTime($date); // Replace with your actual date

    // Current date
    $currentDate = new DateTime();

    // Calculate the difference
    $interval = $currentDate->diff($dateCreated);
    $daysDifference = $interval->days;

    return $daysDifference;
}
function createdUpdatedIterval($created, $updated)
{

    // Date created
    $dateCreated = new DateTime($created); // Replace with your actual date

    // Current date
    $currentDate = new DateTime($updated);

    // Calculate the difference
    $interval = $currentDate->diff($dateCreated);
    $daysDifference = $interval->days;


    return $daysDifference;
}
function getTimeAgoString($created_at)
{
    $dateTime = new DateTime($created_at);

    $currentDateTime = new DateTime();
    $timeDifference = $currentDateTime->diff($dateTime);

    if ($timeDifference->y > 0) {
        $timeAgo = $timeDifference->y . ' year' . ($timeDifference->y > 1 ? 's' : '') . ' ago';
    } elseif ($timeDifference->m > 0) {
        $timeAgo = $timeDifference->m . ' month' . ($timeDifference->m > 1 ? 's' : '') . ' ago';
    } elseif ($timeDifference->d > 0) {
        $timeAgo = $timeDifference->d . ' day' . ($timeDifference->d > 1 ? 's' : '') . ' ago';
    } elseif ($timeDifference->h > 0) {
        $timeAgo = $timeDifference->h . ' hour' . ($timeDifference->h > 1 ? 's' : '') . ' ago';
    } elseif ($timeDifference->i > 0) {
        $timeAgo = $timeDifference->i . ' minute' . ($timeDifference->i > 1 ? 's' : '') . ' ago';
    } else {
        $timeAgo = 'just now';
    }

    echo $timeAgo;
}

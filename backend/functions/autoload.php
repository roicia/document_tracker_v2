<?php
$files = glob($_SERVER['DOCUMENT_ROOT'] . '/backend/class/*.php');
foreach ($files as $file) {
    require $file;
}

<?php



$response =     [
    'message' => 'Scanned',
    'status' => true
];




// Send the JSON-encoded response back to the client
header('Content-Type: application/json');
echo json_encode($response);

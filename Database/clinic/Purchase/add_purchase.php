<?php

require '../connection.php';
$conn    = Connect();

$pharmacy_id = $conn->real_escape_string($_POST['pharmacy_id']);
$prescription_id = $conn->real_escape_string($_POST['prescription_id']);
$date_time =  $conn->real_escape_string($_POST['date']) . ' ' .  $conn->real_escape_string($_POST['time']);

$query   = "INSERT into purchase (pharmacy_id, prescription_id, date_time) VALUES('" . $pharmacy_id . "','" . $prescription_id . "','" . $date_time . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/purchase/purchase_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


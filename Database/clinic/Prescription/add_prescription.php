
<?php

require '../connection.php';
$conn    = Connect();

$dosage = $conn->real_escape_string($_POST['dosage']);
$frequency = $conn->real_escape_string($_POST['frequency']);
$appointment_id = $conn->real_escape_string($_POST['appointment_id']);
$medication_id = $conn->real_escape_string($_POST['medication_id']);

$query   = "INSERT into prescription (dosage, frequency, appointment_id, medication_id) VALUES('" . $dosage . "','" . $frequency . "','" . $appointment_id . "','" . $medication_id . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/prescription/prescription_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


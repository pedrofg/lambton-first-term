
<?php

require '../connection.php';
$conn    = Connect();

$doctor_id = $conn->real_escape_string($_POST['doctor_id']);
$patient_id = $conn->real_escape_string($_POST['patient_id']);
$notes = $conn->real_escape_string($_POST['notes']);
$date = $conn->real_escape_string($_POST['date']);
$time = $conn->real_escape_string($_POST['time']);

$query   = "INSERT into appointment (doctor_id, patient_id, notes, date_time) VALUES('" . $doctor_id . "','" . $patient_id . "','" . $notes . "','" . $date . " " . $time . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/appointment/appointment_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


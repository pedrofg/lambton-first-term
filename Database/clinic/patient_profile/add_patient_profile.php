
<?php

require '../connection.php';
$conn    = Connect();

$appointment_id = $conn->real_escape_string($_POST['appointment_id']);
$notes = $conn->real_escape_string($_POST['notes']);
$date_time = $conn->real_escape_string($_POST['date']) . ' ' . $conn->real_escape_string($_POST['time']);

$query   = "INSERT into patient_profile (appointment_id, notes, date_time) VALUES('" . $appointment_id . "','" . $notes . "','" . $date_time . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/patient_profile/patient_profile_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


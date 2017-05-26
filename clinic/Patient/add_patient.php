
<?php

require '../connection.php';
$conn    = Connect();
$name    = $conn->real_escape_string($_POST['name']);
$address   = $conn->real_escape_string($_POST['address']);
$phone    = $conn->real_escape_string($_POST['phone']);
$doctor_id = $conn->real_escape_string($_POST['family_doctor_id']);
$query   = "INSERT into patient (name,address,phone,family_doctor_id) VALUES('" . $name . "','" . $address . "','" . $phone . "','" . $doctor_id . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/patient/patient_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


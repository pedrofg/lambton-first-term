
<?php

require '../connection.php';
$conn    = Connect();
$name    = $conn->real_escape_string($_POST['name']);
$email   = $conn->real_escape_string($_POST['email']);
$phone    = $conn->real_escape_string($_POST['phone']);
$qualification = $conn->real_escape_string($_POST['qualification']);
$speciality_id = $conn->real_escape_string($_POST['speciality_id']);
$query   = "INSERT into doctor (name, email, phone, qualification, speciality_id) VALUES('" . $name . "','" . $email . "','" . $phone . "','" . $qualification . "','" . $speciality_id . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/doctor/doctor_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


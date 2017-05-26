
<?php

require '../connection.php';
$conn    = Connect();

$name = $conn->real_escape_string($_POST['name']);
$address = $conn->real_escape_string($_POST['address']);
$phone = $conn->real_escape_string($_POST['phone']);

$query   = "INSERT into pharmacist (name, address, phone) VALUES('" . $name . "','" . $address . "','" . $phone . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/pharmacist/pharmacist_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


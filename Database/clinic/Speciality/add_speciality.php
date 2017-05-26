
<?php

require '../connection.php';
$conn    = Connect();

$name = $conn->real_escape_string($_POST['name']);
$desc = $conn->real_escape_string($_POST['desc']);

$query   = "INSERT into speciality (name, description) VALUES('" . $name . "','" . $desc . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/speciality/speciality_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


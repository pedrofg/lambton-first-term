
<?php

require '../connection.php';
$conn    = Connect();

$name = $conn->real_escape_string($_POST['name']);
$description = $conn->real_escape_string($_POST['description']);
$price = $conn->real_escape_string($_POST['price']);


$query   = "INSERT into medication (name, description, price) VALUES('" . $name . "','" . $description . "','" . $price . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/medication/medication_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>



<?php

require '../connection.php';
$conn    = Connect();

$name = $conn->real_escape_string($_POST['name']);
$pharmacist_id = $conn->real_escape_string($_POST['pharmacist_id']);

$query   = "INSERT into pharmacy (name, pharmacist_id) VALUES('" . $name . "','" . $pharmacist_id . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}

$conn->close();


Redirect('http://localhost/clinic/pharmacy/pharmacy_index.php', false);

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
?>


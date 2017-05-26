
<?php

require '../connection.php';
$conn    = Connect();
$id    = $conn->real_escape_string($_POST['delete_doctor_id']);
$query   = "Delete from doctor where id =" .$id;
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}else{
	Redirect('http://localhost/clinic/doctor/view_doctors.php', false);

}

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}


$conn->close();


?>

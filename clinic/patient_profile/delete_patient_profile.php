
<?php

require '../connection.php';
$conn    = Connect();
$id    = $conn->real_escape_string($_POST['delete_medication_id']);
$query   = "Delete from patient_profile where id =" .$id;
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);

}else{
	Redirect('http://localhost/clinic/patient_profile/view_patient_profiles.php', false);

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

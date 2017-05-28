<!DOCTYPE html>
<?php 
	require '../connection.php';
	$conn = Connect();
?>
<html>
<head>
<title> Appointment Form </title>
</head>

<div><?php include('../index.php'); ?></div>
<body class="container well">

<div class="container-fluid">
<h3 >Appointments List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_appointments.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_appointment.php" method="post" class="form-horizontal">

	<h3> Add Appointment</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="doctor_id">Doctor_id:</label>
		<?php
			$result = $conn->query('SELECT id, name FROM doctor order by name;');
			echo '
			<select name="doctor_id">';

			while ($row = $result->fetch_assoc()) {
				echo "<option value=$row[id]>$row[name]</option>";
			}
			echo "</select></div>";
		?>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="patient_id">Patient_id:</label>
		<?php
			$result = $conn->query('SELECT id, name FROM patient order by name;');
			echo '
			<select name="patient_id">';

			while ($row = $result->fetch_assoc()) {
				echo "<option value=$row[id]>$row[name]</option>";
			}
			echo "</select></div>";
		?>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="notes">Notes:</label>
		<input type="text" name="notes"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="date">Date:</label>
		<input type="date" name="date"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="time">Time:</label>
		<input type="time" name="time"><br>
	</div>

	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
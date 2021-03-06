<!DOCTYPE html>
<?php
	require '../connection.php';
	$conn = Connect();
?>			
<html>
<head>
<title> Prescription Form </title>
</head>

<div><?php include('../index.php'); ?></div>
<body class="container well">

<div class="container-fluid">
<h3 >Prescriptions List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_prescriptions.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_prescription.php" method="post" class="form-horizontal">

	<h3> Add Prescription</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="dosage">Dosage:</label>
		<input type="text" name="dosage"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="frequency">Frequency:</label>
		<input type="text" name="frequency"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="appointment_id">Appointment_id:</label>
		<?php
			$result = $conn->query('SELECT id FROM appointment order by id desc;');
			echo '<select name="appointment_id">';

			while ($row = $result->fetch_assoc()) {
				echo "<option value=$row[id]>$row[id]</option>";
			}
			echo "</select></div>";
		?>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="medication_id">Medication_id:</label>
		<?php
			$result = $conn->query('SELECT id,name FROM medication order by id desc;');
			echo '<select name="medication_id">';

			while ($row = $result->fetch_assoc()) {
				echo "<option value=$row[id]>$row[name]</option>";
			}
			echo "</select></div>";
		?>
	</div>

	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
<!DOCTYPE html>
<?php
	require '../connection.php';
	$conn = Connect();
?>			
<html>
<head>
<title> Prescription Form </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

  <script src="./common.js"></script>

</head>

<body class="container well">

<div class="container-fluid">
<h3 >Select an Entity</h3>
	<iframe id="iframe" name="myEntityList" src="../index.php" width="100%" frameborder="0" style="height:35px; border: 1px solid"></iframe>
</div>

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
<!DOCTYPE html>
<html>
<head>
<title> Patient_profile Form </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


</head>

<body class="container well">

<iframe id="iframe2" scrolling="no" name="myEntityList" src="../index.php" width="100%" frameborder="0" style="height:52px;"></iframe>


<div class="container-fluid">
<h3 >Patient Profiles List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_patient_profiles.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_patient_profile.php" method="post" class="form-horizontal">

	<h3> Add Patient Profile</h3>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="appointment_id">Appointment_id:</label>
		</div>
		<div class="col-sm-2">
			<?php
				require '../connection.php';
				$conn = Connect();
				$result = $conn->query('SELECT id FROM appointment order by id desc;');
				echo '<select name="appointment_id">';

				while ($row = $result->fetch_assoc()) {
					echo "<option value=$row[id]>$row[id]</option>";
				}
				echo "</select></div>";
			?>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="notes">Notes:</label>
		</div>
		<div class="col-sm-2">
			<input type="text" name="notes"><br>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="date">Date:</label>
		</div>
		<div class="col-sm-2">
			<input type="date" name="date"><br>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="time">Time:</label>
		</div>
		<div class="col-sm-2">
			<input type="time" name="time"><br>
		</div>
		<div class="clearfix"></div>
	</div>
	

	<div class="form-group">
		<div class = "col-sm-2"></div>
		<div class = "col-sm-1">
			<input type="submit" value="Submit" class="col-sm-offset-1"><br>
		</div>
	</div>

</form>
</body>
</html>
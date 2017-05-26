<!DOCTYPE html>
<html>
<head>
<title> Patient Form </title>
</head>

<div><?php include('../index.php'); ?></div>


<body class="container well">

<div class="container-fluid">
<h3 >Patient List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_patients.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_patient.php" method="post" class="form-horizontal">

	<h3> Add Patient</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="name">Name:</label>
		<input type="text" name="name"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="address">Address:</label>
		<input type="text" name="address"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="phone">Phone:</label>
		<input type="text" name="phone"><br>
	</div>

	<?php
		require '../connection.php';
		$conn = Connect();
		$result = $conn->query('SELECT id, name FROM doctor order by name;');
		echo '<div class="form-group">
		<label class="control-label col-sm-1" for="family_doctor_id">Doctor_ID:</label>
		<select name="family_doctor_id">';

		while ($row = $result->fetch_assoc()) {
			echo "<option value=$row[id]>$row[name]</option>";
		}
		echo "</select></div>";
	?>
	<!-- <div class="form-group">
		<label class="control-label col-sm-1" for="family_doctor_id">Doctor_ID:</label>
		<input type="text" name="family_doctor_id"><br>
	</div> -->
	
	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
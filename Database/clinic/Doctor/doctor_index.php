<!DOCTYPE html>
<html>
<head>
<title> Doctor Form </title>
</head>

<div><?php include('../index.php'); ?></div>

<body class="container well">
<div class="container-fluid">
<h3 >Doctors List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_doctors.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_doctor.php" method="post" class="form-horizontal">

	<h3> Add Doctor</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="name">Name:</label>
		<input type="text" name="name"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="email">Email:</label>
		<input type="text" name="email"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="phone">Phone:</label>
		<input type="text" name="phone"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="qualification">Qualification:</label>
		<input type="text" name="qualification"><br>
	</div>
	<?php
		require '../connection.php';
		$conn = Connect();
		$result = $conn->query('SELECT id, name FROM speciality order by name;');
		echo '<div class="form-group">
		<label class="control-label col-sm-1" for="speciality_id">Speciality:</label>
		<select name="speciality_id">';

		while ($row = $result->fetch_assoc()) {
			echo "<option value=$row[id]>$row[name]</option>";
		}
		echo "</select></div>";
	?>
	<!-- <div class="form-group">
		<label class="control-label col-sm-1" for="speciality_id">Speciality_Id:</label>
		<input type="text" name="speciality_id"><br>
	</div> -->

	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
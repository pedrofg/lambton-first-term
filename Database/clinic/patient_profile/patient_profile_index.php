<!DOCTYPE html>
<html>
<head>
<title> Patient_profile Form </title>

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
			<input type="text" name="appointment_id"><br>
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
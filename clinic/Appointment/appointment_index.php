<!DOCTYPE html>
<html>
<head>
<title> Appointment Form </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

  <script src="./common.js"></script>

</head>

<body class="container well">


<div class="container-fluid">
<h3 >Appointments List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_appointments.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_appointment.php" method="post" class="form-horizontal">

	<h3> Add Appointment</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="doctor_id">Doctor_id:</label>
		<input type="text" name="doctor_id"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="patient_id">Patient_id:</label>
		<input type="text" name="patient_id"><br>
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
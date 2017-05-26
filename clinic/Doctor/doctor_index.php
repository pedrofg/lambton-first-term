<!DOCTYPE html>
<html>
<head>
<title> Doctor Form </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

  <script src="./common.js"></script>

</head>

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
	<div class="form-group">
		<label class="control-label col-sm-1" for="speciality_id">Speciality_Id:</label>
		<input type="text" name="speciality_id"><br>
	</div>

	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
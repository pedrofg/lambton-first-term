<!DOCTYPE html>
<html>
<head>
<title> Medication Form </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

  <script src="./common.js"></script>

</head>

<body class="container well">


<div class="container-fluid">
<h3 >Medications List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_medications.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_medication.php" method="post" class="form-horizontal">

	<h3> Add Medication</h3>
	<div class="form-group">
		<label class="control-label col-sm-1" for="name">Name:</label>
		<input type="text" name="name"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="description">Description:</label>
		<input type="text" name="description"><br>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-1" for="price">Price:</label>
		<input type="number" name="price"><br>
	</div>
	

	<div class="form-group">
		<input type="submit" value="Submit" class="col-sm-offset-1"><br>
	</div>

</form>
</body>
</html>
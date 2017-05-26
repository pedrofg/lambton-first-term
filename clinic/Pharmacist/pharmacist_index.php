<!DOCTYPE html>
<html>
<head>
<title> Pharmacist Form </title>

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
<h3 >Pharmacists List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_pharmacists.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_pharmacist.php" method="post" class="form-horizontal">

	<h3> Add Pharmacist</h3>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="name">Name:</label>
		</div>
		<div class="col-sm-2">
			<input type="text" name="name"><br>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="address">Address:</label>
		</div>
		<div class="col-sm-2">
			<input type="text" name="address"><br>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<label class="control-label" for="phone">Phone:</label>
		</div>
		<div class="col-sm-2">
			<input type="text" name="phone"><br>
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
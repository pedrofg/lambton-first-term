<!DOCTYPE html>
<html>
<head>
<title> Speciality Form </title>
</head>

<div><?php include('../index.php'); ?></div>
<body class="container well">

<div class="container-fluid">
<h3 >Pharmacies List</h3>
	<iframe id="iframe" name="myPHPScript" src="view_specialities.php" width="100%" frameborder="0" style="height:300px;"></iframe>
</div>

<form action="add_speciality.php" method="post" class="form-horizontal">

	<h3> Add Speciality</h3>
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
			<label class="control-label" for="desc">Desc:</label>
		</div>
		<div class="col-sm-2">
			<input type="text" name="desc"><br>
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
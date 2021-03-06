<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
require '../connection.php';
$conn = Connect();

$table = "";
if ($result = $conn->query('SELECT d.id, d.name, d.email, d.phone, d.qualification, s.name as speciality FROM doctor d left join speciality s on d.speciality_id = s.id order by id desc;')) {
    // create the table header row
    $fieldsInfo = $result->fetch_fields();
    $table .= "<table class='table table-inverse' style='width: 100%;'>";
	
	$table .= "<thead>";
		$table .= "<tr>";
		foreach($fieldsInfo as $fieldInfo)
			$table .= "<th scope='row'>{$fieldInfo->name}</th>";
		$table .= "</tr>";
	$table .= "</thead>";
	
	$table .= "<body>";
		// create the table content rows
		while ($row = $result->fetch_assoc()) {
			
			$table .= "<tr>";
			
			foreach($row as $columnValue)
				$table .= "<td>$columnValue</td>";
				
			$table .= "<td>
			<form action='delete_doctor.php' method='post' >
				<input type='hidden' name='delete_doctor_id' value='$row[id]'>
				<button id='delete-doctor' type='submit' name='btn_delete' class='btn btn-danger'>Delete</button>
			</form>
			</td>";
			$table .= "</tr>";
		}
	$table .= "</tbody>";
	
    $table .= "</table>";
}

echo $table;

?>
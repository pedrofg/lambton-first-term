<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
require '../connection.php';
$conn = Connect();

$table = "";
if ($result = $conn->query('SELECT pp.id, pp.notes, pp.date_time, d.name as Doctor, p.name as Patient 
	FROM patient_profile  pp 
	left join appointment app on pp.appointment_id = app.id  
	left join doctor d on d.id = app.doctor_id 
	left join patient p on app.patient_id = p.id 
	order by id desc;')) {
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
			<form action='delete_patient_profile.php' method='post' >
				<input type='hidden' name='delete_patient_profile_id' value='$row[id]'>
				<button id='delete-patient_profile' type='submit' name='btn_delete' class='btn btn-danger'>Delete</button>
			</form>
			</td>";
			$table .= "</tr>";
		}
	$table .= "</tbody>";
	
    $table .= "</table>";
}

echo $table;

?>
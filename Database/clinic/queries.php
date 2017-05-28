<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<div><?php include('./index.php'); ?></div>
<body class="container well">


<?php
	require './connection.php';
	$conn = Connect();
	$switcher = $_GET['switcher'];
	$query = '';
	switch($switcher){
		case 'a': $query = 'SELECT p.id, p.name, p.phone, p.address, Count(p.id) as counter_visits
							FROM patient_profile as pp 
							INNER JOIN appointment as ap ON pp.appointment_id = ap.id 
							INNER JOIN patient as p ON ap.patient_id = p.id
							where pp.date_time >= DATE_SUB(NOW(), INTERVAL 1 YEAR)
							GROUP BY p.id HAVING counter_visits >= 2';
				break;

		case 'b': $query = 'SELECT spec.name, COUNT(pat.id) as patient_counter from speciality as spec 
							INNER JOIN doctor as doc ON doc.speciality_id = spec.id
							INNER JOIN patient as pat ON pat.family_doctor_id = doc.id
							WHERE pat.family_doctor_id = doc.id
							GROUP BY spec.id
							';
				break;
		case 'c': $query = 'SELECT doc.id as doctor_id, doc.name as doctor_name, 
							COUNT(app.doctor_id) as patient_counter, MONTH(app.date_time) as month, 
							MONTHNAME(app.date_time) as month_name 
							FROM appointment as app 
							INNER JOIN doctor as doc ON doc.id = app.doctor_id 
							GROUP BY app.doctor_id, month 
							ORDER BY month ASC, patient_counter DESC';
				break;
		case 'd': $query = 'SELECT doc.id as doctor_id, doc.name as doctor_name, COUNT(app.doctor_id) as patient_counter,
							MONTH(app.date_time) as month, MONTHNAME(app.date_time) as month_name
							FROM appointment as app INNER JOIN doctor as doc ON doc.id = app.doctor_id
							where MONTH(app.date_time) = 1
							GROUP BY app.doctor_id
							ORDER BY patient_counter DESC';
				break;
		case 'e': $query = 'SELECT doc.id as doctor_id, doc.name as doctor_name, COUNT(app.doctor_id) as appointment_counter,
							YEAR(app.date_time) as year
							FROM appointment as app INNER JOIN doctor as doc ON doc.id = app.doctor_id
							where YEAR(app.date_time) = 2017
							GROUP BY app.doctor_id
							ORDER BY appointment_counter DESC';
				break;
		case 'f': $query = 'SELECT doc.id as doctor_id, doc.name as doctor_name, COUNT(app.doctor_id) as patient_counter, 
							MONTH(app.date_time) as month, MONTHNAME(app.date_time) as month_name
							FROM appointment as app
							INNER JOIN doctor as doc ON doc.id = app.doctor_id
							INNER JOIN patient as pat ON pat.id = app.patient_id
							where MONTH(app.date_time) = 1 AND pat.family_doctor_id != doc.id
							GROUP BY app.doctor_id
							ORDER BY patient_counter DESC';
				break;
		case 'g': $query = 'SELECT doc.name as Doctor, count(app.doctor_id) as no_of_times, year(app.date_time) as Year
							from appointment app 
							left join doctor doc on doc.id = app.doctor_id 
							where app.doctor_id <> (SELECT family_doctor_id from patient p where p.id = app.patient_id )
							and year(app.date_time) = year(DATE_SUB(CURDATE(), INTERVAL 1 YEAR))
							group by Doctor_id, Year
							order by no_of_times DESC';
				break;
		case 'h': $query = 'SELECT med.name as Medicine, count(pres.medication_id) as No_of_times_prescribed
							from purchase pur 
							left join prescription pres on pur.prescription_id = pres.id
							left join medication med on pres.medication_id = med.id 
							where month(pur.date_time) = month(DATE_SUB(curdate(), INTERVAL 1 MONTH)) and year(pur.date_time) = year(DATE_SUB(curdate(), INTERVAL 1 MONTH))
							group by 1
							order by 2 DESC';
				break;
		case 'i': $query = 'SELECT med.name as Medicine_Name , count(pres.medication_id) as No_of_times
							from purchase pur 
							left join prescription pres on pur.prescription_id = pres.id
							left join medication med on pres.medication_id = med.id 
							where year(pur.date_time) = year(DATE_SUB(curdate(), INTERVAL 1 Year))
							group by 1
							order by 2 DESC';
				break;
		case 'j': $query = 'SELECT DISTINCT med.name as Medicine_Name_Not_Ordered_In_Last_Month
							from medication med 
							where med.id not in(
								select pres.medication_id 
								from prescription pres
								right join purchase pur on pur.prescription_id = pres.id
								where month(pur.date_time) = month(DATE_SUB(curdate(), INTERVAL 1 MONTH)) and year(pur.date_time) = year(DATE_SUB(curdate(), INTERVAL 1 MONTH)))';
				break;
		case 'k': $query = 'SELECT DISTINCT med.name as Medicine_Name_Not_Ordered_In_Last_Year
							from medication med 
							where med.id not in(
								select pres.medication_id 
								from prescription pres
								right join purchase pur on pur.prescription_id = pres.id
								where year(pur.date_time) = year(DATE_SUB(curdate(), INTERVAL 1 YEAR)))';
				break;
		case 'l': $query = 'SELECT count(pur.prescription_id), month(pur.date_time) as Month, year(pur.date_time) as Year
							from purchase pur
							where pur.date_time > DATE_SUB(curdate(),INTERVAL 13 MONTH)
							group by 2,3
							     order by 3 DESC, 2 DESC';
				break;
		
	}

	$table = "";
	if ($result = $conn->query($query)) {
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
					
				$table .= "</tr>";
			}
		$table .= "</tbody>";
		
	    $table .= "</table>";
	}

	echo $table;
?>
</body>
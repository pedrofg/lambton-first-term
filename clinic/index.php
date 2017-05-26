<?php 
$table 	= '<table border="1px">';
$table .= '	<tr>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Patient/patient_index.php">Patient</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Doctor/doctor_index.php">Doctor</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Appointment/appointment_index.php">Appointment</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Medication/medication_index.php">Medication</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Patient_profile/patient_profile_index.php">Patient_profile</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Pharmacist/pharmacist_index.php">Pharmacist</a></td>';
$table .= '		<td><a target="_parent" class="btn" style="text-decoration:none;" href="/clinic/Pharmacy/pharmacy_index.php">Pharmacy</a></td>';
$table .= '	</tr>';
$table .= '</table>';

echo $table;

?>
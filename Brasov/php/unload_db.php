<?php
$con=mysqli_connect("localhost","root","","brasov");
$result = mysqli_query($con,"SELECT * FROM locatii");
$data = array();
while ($row = mysqli_fetch_object($result))
    array_push($data, $row);
echo json_encode($data);
mysqli_close($con);
exit();
?>

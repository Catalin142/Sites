<?php
$con=mysqli_connect("localhost","root","","cars");


if (mysqli_connect_errno())
{
echo "Nu s-a putut conecta la MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM cars");

$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}

echo json_encode($data);
mysqli_close($con);
exit();
?>

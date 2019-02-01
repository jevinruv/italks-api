<?php
class ResourcePersonnel
{
    //Get ResourcePersonnels
	function getAllNewResourcePersonnel()
	{	
		global $conn;
		$query    = "SELECT * FROM Active_Resource_Personnel ORDER BY Person_ID DESC";
		
		$response = array();
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response[] = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);

	}
	
	//Get ResourcePersonnel from id
	function getResourcePersonnelFromId($id)
	{	
		global $conn;
		$query    = "SELECT * FROM users WHERE id='$id' ";
		
		$response = array();
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response[] = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);

	}
	
	
    //Save ResourcePersonnel
	function addResourcePersonnel($data)
	{
		global $conn;
		$query = "INSERT INTO Active_Resource_Personnel 
					(First_Name, Last_Name, Current_Role, Email, CV_Link) 
					SELECT First_Name, Last_Name, Current_Role, Email, CV_Link
					FROM   New_Resource_Personnel 
					WHERE  Person_ID 
					IN ( " . $data['Selected'] . " )
					";

		$result = mysqli_query($conn, $query);

		if($result){
			$deleteQuery = "DELETE FROM New_Resource_Personnel
							WHERE `Person_ID` 
							IN ( " . $data['Selected'] . " )
							";
			$deleteResult = mysqli_query($conn, $deleteQuery);


		}

		header('Content-Type: application/json');
		echo json_encode($result);

        //Respond success / error messages
	}
	

    //Update ResourcePersonnel
	function updateResourcePersonnel($data)
	{
		global $conn;
		$query = "UPDATE users SET first_name='" . $data->first_name . "', last_name='" . $data->last_name . "' WHERE id=$data->id.";
		echo $result = mysqli_query($conn, $query);
		header('Content-Type: application/json');
        //Respond success / error messages
	}

    //Delete ResourcePersonnel
	function deleteResourcePersonnel($data)
	{
		global $conn;
		$query = "DELETE FROM users WHERE id=" . $data->id;
		echo $result = mysqli_query($conn, $query);
		header('Content-Type: application/json');
        //Respond success / error messages
	}
}
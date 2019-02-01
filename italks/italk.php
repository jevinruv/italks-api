<?php
class ITalk
{
    //Get ResourcePersonnels
	function getAllITalks()
	{	
		global $conn;
		$query    = "SELECT * FROM Past_Talks UNION SELECT * FROM New_Talks";

		$response = array();
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response[] = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);

	}
	
	//Get PastTalk from id
	function getTalk($id)
	{	
		global $conn;
		$query    = "SELECT * FROM Past_Talks WHERE Talk_ID='$id' ";
		
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);

	}
	
	
    //Save ResourcePersonnel
	function saveResourcePersonnel($data)
	{
		global $conn;
		$query = "INSERT INTO users (first_name, last_name) VALUES ('" . $data->first_name . "', '" . $data->last_name . "')";
		echo $result = mysqli_query($conn, $query);
		header('Content-Type: application/json');
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


	    //Delete iTalk
	function deleteITalk($data)
	{
		global $conn;
		$query = "DELETE FROM New_Talks
					WHERE Name 
					IN ( '". $data['TalkName'] ."' )
					AND Resource_Personnel
					IN ( " . $data['ResourcePersonnnel'] . " )
					";

		$query2 = "DELETE FROM Past_Talks
					WHERE Name 
					IN ( '". $data['TalkName'] ."' )
					AND Resource_Personnel
					IN ( " . $data['ResourcePersonnnel'] . " )
					";					

		$result = mysqli_query($conn, $query);
		$result2 = mysqli_query($conn, $query2);


		header('Content-Type: application/json');
		echo json_encode($result);
	}
}
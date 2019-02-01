<?php
class PastTalk
{
    //Get ResourcePersonnels
	function getAllPastTalks()
	{	
		global $conn;
		$query    = "SELECT * FROM Past_Talks ORDER BY Talk_ID DESC";
		
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

	function deletePastTalk($data)
	{
		global $conn;
		$query = "DELETE FROM Past_Talks
					WHERE `Talk_ID` 
					IN ( " . $data['Selected'] . " )
					";

		$result = mysqli_query($conn, $query);

		header('Content-Type: application/json');
		echo json_encode($result);
	}
}
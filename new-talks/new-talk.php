<?php
class NewTalk
{
		//Get Latest Talk
	function getLatestTalk()
	{	
		global $conn;
		$query    = "SELECT * FROM New_Talks WHERE `Date` > NOW() ORDER BY `Date` LIMIT 1";
		
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}

    //Get Get All New Talks
	function getAllNewTalks()
	{	
		global $conn;
		$query    = "SELECT * FROM New_Talks ORDER BY Talk_ID DESC";
		
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
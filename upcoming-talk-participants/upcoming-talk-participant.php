<?php
class UpcomingTalkParticipant
{
    //Get All Participants From Id
	function getAllUpcomingTalkParticipantsFromId($id)
	{	
		global $conn;
		$query    = "SELECT * FROM Upcoming_Talk_Participants WHERE New_Talk_ID = $id ORDER BY ID DESC";
		
		$response = array();
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response[] = $row;
		}
		header('Content-Type: application/json');
		echo json_encode($response);

	}
	
	//Get All Participants 
	function getAllUpcomingTalkParticipants()
	{	
		global $conn;
		$query    = "SELECT * FROM Upcoming_Talk_Participants ORDER BY ID DESC";
		
		$response = array();
		$result   = mysqli_query($conn, $query);
		while ($row = mysqli_fetch_assoc($result)) {
			$response[] = $row;
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
<?php
//header('Access-Control-Allow-Origin: *');



if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    //If required
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
    
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    
    exit(0);
}



// Connect to database
include_once('../dbcon.php');
include_once('italk.php');

$request_method = $_SERVER["REQUEST_METHOD"];
$data           = json_decode(file_get_contents("php://input"), true);
$iTalk           = new ITalk;


switch ($request_method) {
    
    case 'GET':
        // Retrive Talk from id
        if (!empty($_GET["id"])) {
            $talk_id = intval($_GET["id"]);
            $iTalk->getITalk($talk_id);
        } 
		//get all Talks
		else {
            $iTalk->getAllITalks();
        }
        break;
    
    case 'POST':
        // Insert User
        $pastTalk->saveUser($data);
        break;
    case 'PUT':
        $pastTalk->updateUser($data);
        break;
    case 'DELETE':
        // Delete User
        $iTalk->deleteITalk($data);
        break;
    default:
        // Invalid Request Method
        header("HTTP/1.0 405 Method Not Allowed");
        break;
}

?>
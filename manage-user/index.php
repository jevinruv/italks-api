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
        header("Access-Control-Allow-Methods: GET, POST, PUT, OPTIONS");
    
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    
    exit(0);
}



// Connect to database
include_once('../dbcon.php');
include_once('user.php');

$request_method = $_SERVER["REQUEST_METHOD"];
$data           = json_decode(file_get_contents("php://input"));
$user           = new User;


switch ($request_method) {

    case 'GET':
        // Retrive User from id
    if (!empty($_GET["id"])) {
        $talk_id = intval($_GET["id"]);
        $pastTalk->getTalk($talk_id);
    } 
    if (!empty($_GET["email"]) && !empty($_GET["password"])) {
        $email = $_GET["email"];
        $password = $_GET["password"];
        $user->isUserExist($email, $password);
    } 
		//get all users
    else {
        $user->getAllUsers();
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
    $pastTalk->deleteUser($data);
    break;
    default:
        // Invalid Request Method
    header("HTTP/1.0 405 Method Not Allowed");
    break;
}

?>
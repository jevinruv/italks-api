<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

$target_dir = "uploads/";
$url        = $_SERVER['REQUEST_URI']; //returns the current URL
$parts      = explode('/', $url);
$dir        = "http://" . $_SERVER['SERVER_NAME'];
for ($i = 0; $i < count($parts) - 1; $i++) {
    $dir .= $parts[$i] . "/";
}
//echo $dir;
$actual_link   = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$target_file   = $target_dir . basename($_FILES["selectFile"]["name"]);
$uploadOk      = 1;
$imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);


// Check if image file is a actual image or fake image
if (isset($_POST["submit"])) {
    $check = getimagesize($_FILES["selectFile"]["tmp_name"]);
    if ($check !== false) {
        $output   = "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        $output   = "File is not an image.";
        $uploadOk = 0;
        header('Content-Type: application/json');
        echo json_encode($output);
    }
}

// Check if file already exists
if (file_exists($target_file)) {
    $output   = "Sorry, file already exists.";
    $uploadOk = 0;
    header('Content-Type: application/json');
    echo json_encode($output);
}

// Check file size
/*
if ($_FILES["selectFile"]["size"] > 500000) {
echo "Sorry, your file is too large.";
$uploadOk = 0;
}*/
// Allow certain file formats
/*
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
$uploadOk = 0;
}
*/

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    $output = "Sorry, your file was not uploaded.";
    header('Content-Type: application/json');
    echo json_encode($output);
    // if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["selectFile"]["tmp_name"], $target_file)) {
        // echo "The file ". basename( $_FILES["selectFile"]["name"]). " has been uploaded.";
        $output = $dir . $target_file;
        header('Content-Type: application/json');
        echo json_encode($output);
    } else {
        $output = "Sorry, there was an error uploading your file.";
        header('Content-Type: application/json');
        echo json_encode($output);
    }
}
?>
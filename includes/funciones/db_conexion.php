<?php 
    $conn = new mysqli('localhost', 'root', 'root', 'bsaswebcamp');
    if($conn->connect_error){
        echo $error -> $conn->connect_error;
    }
?>
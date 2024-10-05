<?php

    $conn= mysqli_connect('localhost','root','','approval');


    $accept= $_POST['Aj'];
    $id=     $_GET['id'];

    if ($accept=='Accept'){
        $sql= "UPDATE `approval_list` 
               SET `accept_decline` =1
               WHERE approval_id=$id";
        echo($accept);
    }else{
        $sql= "UPDATE `approval_list` 
               SET `accept_decline` = 0
               WHERE approval_id=$id";
    }
    $result= mysqli_query($conn, $sql);


    header("Location: index.php");

<?php

    $conn= mysqli_connect('localhost','root','','approval');


    $employee_id =   $_POST['employee_id'];
    $password    =   $_POST['password'];

$sql= "SELECT * FROM user_info WHERE employee_id =$employee_id";
$result= mysqli_query($conn, $sql);
$row=mysqli_fetch_assoc($result);



if (isset($row)){
    if ($row['passkey']==$password && $employee_id==1){
        header("Location:admin_index.php");
        session_start();
        $_SESSION['login'] = true;
    }else{

        if($row['passkey']==$password && $row['employee_id']==$employee_id){
            header("Location:index.php");
            session_start();
            $_SESSION['login'] = true;
            $_SESSION['employee_id'] = $employee_id;
    }

    }
}else{

    //header("Location:signin.php");

    


}






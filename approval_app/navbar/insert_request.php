<?php

    $conn= mysqli_connect('localhost','root','','approval');
    session_start();

    $approver_id2=  $_POST['approver2'];
    $approver_id3=  $_POST['approver3'];
    $request_type=  $_POST['request_type'];
    $subject=       $_POST['subject'];
    $application=   $_POST['application'];
    $employee_id=$_SESSION['employee_id'];

    echo $employee_id;


    $department_sql="SELECT department FROM employee_data WHERE employee_id=$employee_id";
    $department_result= mysqli_query($conn, $department_sql);
    $department_row=mysqli_fetch_assoc($department_result);
    $department= $department_row['department'];
    $approver_sql="SELECT approver_id FROM approver_data WHERE department='$department'";
    $approver_result= mysqli_query($conn, $approver_sql);
    $approver_id_row=mysqli_fetch_assoc($approver_result);
    $approver_id1 =$approver_id_row['approver_id'];
    
    
    $approver_sql="INSERT INTO `approve_policy` (`policy_id`, `f_approver_id`, `f_approver_status`,
     `s_approver_id`, `s_approver_status`, `t_approver_id`, `t_approver_status`) 
    VALUES (NULL, '$approver_id1', 'No Statement', '$approver_id2', 'No Statement', '$approver_id3', 'No Statement')";
    $insert_result= mysqli_query($conn, $approver_sql);


    $sql= "INSERT INTO `approval_list` ( `employee_id`, `request_type`, `accept_decline`, `subject`, `application`)
    VALUES 
    ('$employee_id', '$request_type', '0', '$subject', '$application')";
    
    $insert_result= mysqli_query($conn, $sql);


    header("Location: ../");


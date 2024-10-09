<?php

    $conn= mysqli_connect('localhost','root','','approval');

    $accept= $_POST['Aj'];
    $id=     $_GET['id'];
    $add_money= $_POST['money'];


$fst_approver="SELECT policy_id, f_approver_id FROM `approve_policy` WHERE f_approver_status='No Statement' ";
$fst_result= mysqli_query($conn, $fst_approver);
if($fst_row=mysqli_fetch_assoc($fst_result)){


    $approver_id=$fst_row['f_approver_id'];
    $policy_id=  $fst_row['policy_id'];

    if ($accept=='Accept'){
        $sql= "UPDATE `approve_policy` 
               SET `f_approver_status` ='Approved'
               WHERE f_approver_id=$approver_id";
    }else{
        $sql= "UPDATE `approve_policy` 
           SET `f_approver_status` ='Declined'
           WHERE f_approver_id=$approver_id";
    }
    $result= mysqli_query($conn, $sql);
    
}else{
  $scnd_approver="SELECT policy_id, s_approver_id FROM `approve_policy` WHERE s_approver_status='No Statement' ";
  $scnd_result= mysqli_query($conn, $scnd_approver);
  if($scnd_row=mysqli_fetch_assoc($scnd_result)){
        $approver_id=$scnd_row['s_approver_id'];
        $policy_id=  $scnd_row['policy_id'];
        if ($accept=='Accept'){
            $sql= "UPDATE `approve_policy` 
                   SET `s_approver_status` ='Approved'
                   WHERE s_approver_id=$approver_id";
        }else{
            $sql= "UPDATE `approve_policy` 
               SET `s_approver_status` ='Declined'
               WHERE s_approver_id=$approver_id";
        }
        $result= mysqli_query($conn, $sql);
    }else{
        $thrd_approver="SELECT policy_id, t_approver_id FROM `approve_policy` WHERE t_approver_status='No Statement' ";
        $thrd_result= mysqli_query($conn, $thrd_approver);
            if($thrd_row=mysqli_fetch_assoc($thrd_result)){
                $approver_id=$thrd_row['t_approver_id'];
                $policy_id=  $thrd_row['policy_id'];
                if ($accept=='Accept'){
                    $sql= "UPDATE `approve_policy` 
                           SET `t_approver_status` ='Approved'
                           WHERE t_approver_id=$approver_id";
                }else{
                    $sql= "UPDATE `approve_policy` 
                       SET `t_approver_status` ='Declined'
                       WHERE t_approver_id=$approver_id";
                }
                $result= mysqli_query($conn, $sql);
        }
    }
    $approver_id=null;

}




if ($approver_id==null){
    if ($accept=='Accept'){
        $sql= "UPDATE `approval_list` 
               SET `accept_decline` =1 ,`money`=$add_money
               WHERE approval_id=$id";
    }else{
        $sql= "UPDATE `approval_list` 
               SET `accept_decline` = 0
               WHERE approval_id=$id";
    }
    $result= mysqli_query($conn, $sql);
}else{
    $sql= "UPDATE `approval_list` 
            SET `accept_decline` = 0
            WHERE policy_id=$id";
}





    header("Location: index.php");

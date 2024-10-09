<?php

require '../my_database.php';


$limit=5;
if(!isset($_GET['page'])){
  $page_num=1;
}else{
  $page_num=$_GET['page'];
}
$initial_page= ($page_num-1)*$limit;

$approved_sql= "SELECT * FROM approval_list WHERE accept_decline=1 LIMIT $initial_page,$limit";
$result= mysqli_query($conn, $approved_sql);


$sql= "SELECT * FROM approver_data";
$result1= mysqli_query($conn, $sql);
$result2= mysqli_query($conn, $sql);
$result3= mysqli_query($conn, $sql);

session_start();

if ($_SESSION['login'] == true){


?>



<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Approval | Index</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../style_navbar.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.5/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.0.5/js/dataTables.js"></script>

</head>
<body class="align">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link logout" href="logout.php">Log Out</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="width: 50%">
        <button class="btn btn-outline-success" type="submit"><img src="assets/search_icon.jpg" style="width: 130%"></button>
      </form>
    </div>
  </div>
</nav>
<!-- Navbar -->
<nav id="navbar">
  <ul class="navbar-items flexbox-col">
    <li class="navbar-logo flexbox-left">
      <a class="navbar-item-inner flexbox">
        <svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 1438.88 1819.54">
          <polygon points="925.79 318.48 830.56 0 183.51 1384.12 510.41 1178.46 925.79 318.48" />
          <polygon points="1438.88 1663.28 1126.35 948.08 111.98 1586.26 0 1819.54 1020.91 1250.57 1123.78 1471.02 783.64 1663.28 1438.88 1663.28" />
        </svg>
      </a>
    </li> 
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="#">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="pie-chart-outline"></ion-icon>
        </div>
        <span class="link-text">Dashboard</span>
      </a>
    </li>
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="approved_request.php">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="people-outline"></ion-icon>
        </div>
        <span class="link-text">Approved Request</span>
      </a>
    </li>
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="make_approval_request.php">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="chatbubbles-outline"></ion-icon>
        </div>
        <span class="link-text">Approval Request</span>
      </a>
    </li>
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="draft.php">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="chatbubbles-outline"></ion-icon>
        </div>
        <span class="link-text">Draft Request</span>
      </a>
    </li>
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="chatbubbles-outline"></ion-icon>
        </div>
        <span class="link-text">Request Report</span>
      </a>
    </li>
    <li class="navbar-item flexbox-left">
      <a class="navbar-item-inner flexbox-left" href="#">
        <div class="navbar-item-inner-icon-wrapper flexbox">
          <ion-icon name="settings-outline"></ion-icon>
        </div>
        <span class="link-text">Settings</span>
      </a>
    </li>
  </ul>
</nav>

<div class="container">
  <div class="row">
    <section>
      <form action="" method="post" class="form" id="algin-form">
        <div class="approver">
          <select class ="approver2" name="approver3" id="approver3">
           <option value=>Select Department</option>
           <?php 
            while($row1=mysqli_fetch_assoc($result1)){
           ?>
           <option value=<?php echo($row1['approver_id'])?>><?php echo($row1['department'])?></option>
           <?php
            }?>
          </select>
         <select class ="approver2" name="approver2" id="approver2">
          <option value=>Select Department</option>
           <?php 
            while($row2=mysqli_fetch_assoc($result2)){
           ?>
           <option value=<?php echo($row2['approver_id'])?>><?php echo($row2['department'])?></option>
           <?php
            }?>
          </select>
          <select class ="approver2" name="approver3" id="approver3">
           <option value=>Select Department</option>
           <?php 
            while($row3=mysqli_fetch_assoc($result3)){
           ?>
           <option value=<?php echo($row3['approver_id'])?>><?php echo($row3['department'])?></option>
           <?php
            }?>
          </select>
          <input  type="submit" value="Submit">
        </div>
      </form>
    </section> 
  </div>


  <div class="container">
  <table id="myTable" class="display">
  <thead>
    <tr>
      <th>Employee ID</th>
      <th>Employee Name</th>
      <th>Designation</th>
      <th>Request Type</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    while($row=mysqli_fetch_assoc($result)){
      $epmloyee_id=$row['employee_id'];
      $employee_data= "SELECT * FROM employee_data WHERE employee_id=$epmloyee_id";
      $data_con=mysqli_query($conn, $employee_data);
      $data=mysqli_fetch_assoc($data_con);
 

      
      ?>
    <tr>
      <td><strong><?php echo($epmloyee_id)?></strong></td>
      <td><?php echo($data['employee_name'])?></td>
      <td><?php echo($data['designation'])?></td>
      <td><?php echo($row['request_type'])?></td>
    </tr>
    <?php } ?>
  </tbody>
</table>

  </div>

</div>

<div class="page">
<?php
$sql1= "SELECT * FROM approval_list ";
$result1= mysqli_query($conn, $sql1);
$total_rows= mysqli_num_rows($result1);

$total_pages= ceil($total_rows / $limit);

for($page_num=1; $page_num<=$total_pages; $page_num++){
  echo '<a class="page_num" href= "report.php?page='.$page_num.'">'.$page_num.'</a>';
}
?>
</div>



</body>
</html>

<?php
}else{
  header("Location:../signin.php");
}
?>

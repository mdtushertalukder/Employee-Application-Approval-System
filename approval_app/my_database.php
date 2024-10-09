<?php


$conn= mysqli_connect('localhost','root','','approval');


if(!isset($_SESSION['login'])){
 // header("Location:signin.php");
}
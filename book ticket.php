<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>book ticket</title>
<link rel="stylesheet" type="text/css" href="register.css">

<style>

select{
        width: 100px; 
        padding: 8px 334px 15px 38px;
       border: 1px solid brown;
        border-radius: 5px;
        box-shadow: 1px 1px 2px 1px grey;
       
}        
        </style>
</head>
<body>
<?php

   include 'connect.php';
  if(isset($_POST['submit']))
  {
      $fullname = $_POST['fullname'];
      $gender = $_POST['gender'];
      $phone = $_POST['phone'];
      $email = $_POST['email'];
      $dob = $_POST['dob'];
      $address = $_POST['address'];
      $stadium = $_POST['stadium'];
      $date = $_POST['date'];
      $amount = $_POST['amount'];
     
$qry = " INSERT INTO `bookticket`(`fullname`, `gender`, `phone`, `email`, `dob`, `address`, `stadium`, `date`, `amount`)
VALUES ('$fullname', '$gender', '$phone', '$email', '$dob', '$address', '$stadium', '$date', '$amount')";
       mysqli_query($conn,$qry);
                  
        if(mysqli_query($conn,$qry))
        {
                    ?>
                    <script> alert("ticket booked succesfully");
                </script>
                    <?php
                }
                else{
                    ?>
                    <script> alert(" ticket not booked ");
                </script>
                    <?php
                }
    }

    ?>

    <div class="registration-form">
    <h1>enter details for book ticket</h1>
    <form action="book ticket.php" method="POST">
    <p>full name:</p>
    <input type="text" name="fullname" placeholder="ENTER YOUR NAME">
    <div class="gendercol">
     gender:
    <input type="radio" name="gender" value="male"> MALE
    <input type="radio" name="gender" value="female"> FEMALE
    <input type="radio" name="gender" value="others"> OTHERS</div>
    <p>email:</p>
    <input type="email" name="email" placeholder="ENTER YOUR EMAIL">
    <p>phone no:</p>
    <input type="text" name="phone" placeholder="ENTER PHONE NO">
    <p>dob:</p>
    <input type="date" name="dob" placeholder="enter dob">
    <p>address:</p>
    <input type="text" name="address" placeholder="ENTER ADDRESS ">
    <p>STADIUM NAME:</p>
    <select  name="stadium">
        <option value="montera"> MONTERA </option>
        <option value="holkar"> HOLKAR </option>
        <option value="CHEPAK"> CHEPAK </option>
        <option value="WANKHEDE"> WANKHEDE </option>
            </select>
        <p>date:</p>
       <input type="date" name="date" placeholder="select dob">
       <p>amount:</p>
       <select class="stadium" name="amount">
        <option value="100"> 100 </option>
        <option value="200"> 200 </option>
        <option value="300"> 300 </option>
        
        </select>
    
    
    <button type"submit" name="submit" value="submit"> book ticket </button>
    </form>
    </div>
    
</body>
</html>
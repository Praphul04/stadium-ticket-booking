<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "stadium";


$conn =  mysqli_connect($servername,$username,$password,$database);

if($conn){
    ?>
    <script> alert("connection sucessfull");
</script>
    <?php
}
else{
    ?>
    <script> alert(" no connection ");
</script>
    <?php
}
?>

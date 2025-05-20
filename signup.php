<?php
$con=mysqli_connect('localhost:3307','root','','travel');

if (isset($_POST['signup'])) {
  $firstname=$_POST['fname'];
  $que = "SELECT fname FROM customer WHERE fname='$firstname'";
  if($que){
    ?>
    <script type="text/javascript">
      alert("username already taken")
    </script>
    <?php
  }
}
?>
<!DOCTYPE html>
<html>
<head>
  <title> Sign Up Form </title>
  <meta name="viewport" content="width= device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/signup.css">
</head>

<body>
  <form from="myForm" action ="save.php" method="POST">

    <div class="login-box">

      <h1> Sign Up </h1>

      <div class="textbox">
        <input type="text" placeholder="Username" id="fname" name="fname" value="" required>  
      </div>

      <div class="textbox">
    <input type="password" placeholder="Password" id="password" name="password" value="" maxlength="8" pattern="(?=.\d)(?=.[a-z])(?=.*[A-Z]).{8,}" title="Password must contain exactly 16 characters, including at least one number, one uppercase letter, and one lowercase letter" required>
</div>

<div class="textbox">
      <input type="text" placeholder="Email" id="email" name="email" value=""  pattern="^[\w.%+-]+@gmail\.com$" title="Invalid Email" required>
    </div>


      <div class="textbox">
        <input type="text" placeholder="City" id="city" name="city" value="" required>
      </div>

      <div class="textbox">
        <input type="text" placeholder="Phone" id="phone" name="phone" value="" required onkeypress="return /[0-9]/i.test(event.key)" maxlength="10" pattern="([0-9]){10,}">
      </div>

      <input class="btn" type="submit" name="" value="Sign Up"> <br> <br>

      <center> <a href="index.html"> Already have an account ? </a> <center>

    </div>
    
  </form>

</body>
</html>
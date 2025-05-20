<?php
include_once('infop.php');
if(isset($_POST['goa'])) {
	$que="SELECT * FROM `information` WHERE pname='Goa'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['kerala'])) {
	$que="SELECT * FROM `information` WHERE pname='Kerala'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['mysore'])) {
	$que="SELECT * FROM `information` WHERE pname='Mysore'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['agra'])) {
	$que="SELECT * FROM `information` WHERE pname='Agra'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['india_gate'])) {
	$que="SELECT * FROM `information` WHERE pname='Delhi'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['rajasthan'])) {
	$que="SELECT * FROM `information` WHERE pname='Rajasthan'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['ladakh'])) {
	$que="SELECT * FROM `information` WHERE pname='Ladakh'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['manali'])) {
	$que="SELECT * FROM `information` WHERE pname='Manali'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['srinagar'])) {
	$que="SELECT * FROM `information` WHERE pname='Srinagar'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['amritsar'])) {
	$que="SELECT * FROM `information` WHERE pname='Amritsar'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['search_p'])) {
	$search = $_POST['search_p'];
	$que="SELECT * FROM `information` WHERE pname='$search'";
	$result = mysqli_query($db, $que);
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/info.css">
	<title>Information</title>
</head>
<body>
	<div class="main">
	    <ul>
	      <ul class="list">
	        <li class="logo"><a href="mainPage.html"><img src="earth-globe.png" alt="Logo" style="width:36px;height:36px"></a></li>
	        <div class="search">
                <form method="POST" action="info.php">
                  <input type="text" name="search_p" placeholder="Search.." size="50">
              
                  <input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:22;height:22; margin-left: 35px;">
                </form>
            </div>
	      </ul>
	      <ul class="list2">
	        <li><a href="mainPage.html">Home</a></li>
	        <li><a id="long" href="destination.html">Destination</a></li>
	        <li><a href="hotel.html">Hotels</a></li>
			<li><a href="index.html">Logout</a></li>
	      </ul>
	    </ul>
	</div>
	<div class="hedder">
		
	</div>
	<div class="container">
		<div class="description-container">
			<div class="box1">
				<?php
					while($rows = mysqli_fetch_assoc($result))
					{
				?>
				<img src="<?php echo $rows['pi_main']; ?>" alt="Taj Mahal Image" style="width: auto;height: 350px;">
			</div>
			<div class="description">
				<h1><?php echo $rows['pname']; ?><h1>
				<p style="text-align: justify;"><?php echo $rows['pdescription']; ?></p>
				<p style="text-align: justify;"><?php echo $rows['packagecov']; ?></p>
				<p style="text-align: justify;"><?php echo $rows['htr1']; ?></p>
				<p style="text-align: justify;"><?php echo $rows['htr2']; ?></p>
				<p style="text-align: justify;"><?php echo $rows['htr3']; ?></p>
				<p style="color:red; top: -10px;" > Package:Rs <?php echo $rows['package']; ?></p>

			</div>
			<a href="bookinged<?php echo strtolower($rows['pname']); ?>.html" style="top: -20px; float: right; margin-right: 27%;">Book Tour</a>
		</div>
		
	        	<?php
					}
				?>
	      </div>
		</div>
	</div>
</body>
</html>
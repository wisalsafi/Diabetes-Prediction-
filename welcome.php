<?php
use Phpml\Classification\DecisionTree;  //loading decision tree class
session_start();
require_once('dbconnection.php');
if (strlen($_SESSION['id']==0)) {
  header('location:logout.php');
  } else{
	  require_once __DIR__ . '/vendor/autoload.php'; // this load is mandatory to perform  decision tree operation
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/heroic-features.css" rel="stylesheet">
	<link href="css/styleuser.css" rel="stylesheet">
</head>
<body>
      

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"> Welcome !</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#"><?php echo $_SESSION['name'];?></a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
                  
                </ul>
            </div>
        </div>
    </nav>
  </body>
    
      
<!DOCTYPE html>
<html lang="en">
  <head>

    <title>Admin | Manage Users</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>

  <body>
    
<div class="login-box">
  <h2>Please Enter Your Report</h2>
  <form name="chkvalues" method="post" action="">
<table style="width:100%">
<tr><td>
  <?php

  	
								  // the purpose of this part of php block is to check the gender of user if is male than generate hidden text filed and assign valu to it as 0
								  // if the patitent is female than pregnancy text will be visible
								  $session=$_SESSION['id'];
								  $servername = "localhost";
                                  $username = "root";
                                  $password = "";
                                  $dbname = "diabeties";
                                  // Create connection
                                  $conn = new mysqli($servername, $username, $password, $dbname);
                                  $sql = "SELECT * from users where id='$session'";
                                  $result = $conn->query($sql);
								  while($row = $result->fetch_assoc())
							  {
								  
								  if($row['gender']=="Male")
								  {
									  echo "<input type='hidden'  name='preg' value='0'  readonly>";
								  }
								  else 
								  {
									  echo "<div class='user-box'><input type='number'  name='preg' required><label>Pregnancy</label> </div>";
									  
								  }
								   
								   
							  } 
							  // end of the block description
							  ?>
    </td><td>
    <div class="user-box">
      <input type="number" step="any" min="0.0" max="300"  name="plas"  required> <!-- input field for Plasma collection-->
      <label>Plasma</label>
    </div>
	</td><td>
	<div class="user-box">
      <input type="number"  name="pres" min="0" max="190"  required><!-- input field for Blood Pressure collection-->
      <label>Blood Pressure</label>
    </div>
	</td><td>
	<div class="user-box">
      <input type="number" step="any"  name="skin" min="0.00" max="99.00"  required><!-- input field for Skin collection-->
      <label>Skin</label>
    </div>
	</td></tr><tr><td colspan="2">
	<div class="user-box">
      <input type="number" step="any"  name="insu" min="0" max="860"  required><!-- input field for Insulin collection-->
      <label>Insulin</label>
    </div>
	</td><td>
	<div class="user-box">
     <input type="number" step="any"  name="mass" min="0" max="150"  required><!-- input field for Mass collection-->
      <label>Mass</label>
    </div>
	</td><td>
	<div class="user-box">
      <input type="number" step="any"  name="pedi" min="0.0780" max="2.6" required><!-- input field for Pedi collection-->
      <label>Pedi</label>
    </div>
	</td></tr><tr><td colspan="2">
	<div class="user-box">
       <input type="number"  name="age" min="1" max="120"  required> <!-- input field for age collection-->
      <label>Age</label>
    </div></td></tr>
	<tr><td colspan="3">
	<div class="user-box">

	<?php
      							  if(isset($_POST['chkvalues']))
{	
$preg=$_POST['preg'];
$plas=$_POST['plas'];
$pres=$_POST['pres'];
$skin=$_POST['skin'];
$insu=$_POST['insu'];
$mass=$_POST['mass'];
$pedi=$_POST['pedi'];
$age=$_POST['age'];
$id=$_SESSION['id'];
$name=$_SESSION['name']; 
$counter=0;   
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "diabeties";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$sql="SELECT * FROM diabetic";
$result = $conn->query($sql);
while($row = $result->fetch_assoc())				
	  {
$samples[$counter]=[$row['pregnancy'],$row['plasma'],$row['bloodpressure'],$row['skin'],$row['insulin'],$row['mass'],$row['pedi'],$row['age']]; //collection of dataset from table in array for passing it to Descision Tree
$labels[$counter]=$row['class'];//collection of test_positive and test_negative from table in array for passing it to Descision Tree
$counter++;}
$classifier = new DecisionTree();
$classifier->train($samples, $labels);
$class=$classifier->predict([$preg,$plas,$pres,$skin,$insu,$mass,$pedi,$age]);
echo "<label>";
echo $class;
echo   "</label>";
$sql="INSERT INTO patient(id,patient_name,preg,plas,pres,skin,insu,mass,pedi,age,class)			
VALUES('$id','$name','$preg','$plas','$pres','$skin','$insu','$mass','$pedi','$age','$class')"; //this query will add the submitted data and the predited result
$conn->query($sql);
$conn->close();

}
else
{
	 echo "<label>Wait for Result Please fill the above record</label>";
}
?>
</div>
</td>
   <td colspan="2">   
    <a href="#" style="margin-right:44px;">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <input type="submit" name="chkvalues" value="Check" style="background-color: transparent;
    border-color: transparent;">
    </a></td></tr>
	</table>
  </form>
</div>
    

      
    </body>

</html>
<?php } ?>
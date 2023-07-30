 <?php	
include 'header.php';
    include "database.php";
?>

		<body>
		<style>
body {
		background-color: #16796F;

		}
		</style>
    
 <div class="container"> 
    
 <div class="jumbotron other-color">
 

      
<h2>Hi <?php echo $_SESSION['u_name']; ?></h2>    <br> <br>

<a href="index.php" role="button" class="btn btn-success">Homepage</a> <br> <br>
<a href="reviews_list.php" role="button" class="btn btn-success">View Your Reviews</a> <br> <br>
<a href="restaurants_list.php" role="button" class="btn btn-success">View Restaurants</a><br> <br>
<a href=" " role="button" class="btn btn-success">Settings</a>
   
      
     
  </body>





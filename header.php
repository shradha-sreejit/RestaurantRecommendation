<!-- NAVIGATION BAR SET UP -->

<!DOCTYPE html>
<html lang="en">
<head>
  <title>FlavorFinder</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> <!-- Visual appealing elements-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
		.other-color{
		margin: auto;
		width:70%;
		height: 90%;
	}
    
    </style>
    </head> 
    
    
    <?php	
    include "database.php";
    include "session.php"; 
    ?>
    <!-- Navigation bar starts from here -->
    
<body>
    
    <nav class="navbar navbar-expand-lg"style="background-color: #E1CD30; other-color: E1CD30;">
	
  <div class="container-fluid">
 
    <div class="navbar-header">
	
		<a class="navbar-brand" href="index.php">FlavorFinder</a>
		</div>
      
<!-- Log out menu starts -->      
   <?php if(isset($_SESSION['u_id']) && !empty($_SESSION['u_id']) )
		 { ?>
	 
          <ul class="nav navbar-nav">
		  <li class="active"><a href="questionnaire.php">Discover</a></li>
           <li class="active"><a href="restaurants_list.php">Restaurants</a></li> 
		   <li class="active"><a href="reviews_list.php">Reviews</a></li> 
		   </ul>
      
        <ul class="nav navbar-nav navbar-right">
            <li><a href="profile.php"><span class="glyphicon glyphicon-user"></span>
          <?php echo $_SESSION['u_name']; ?>
          </a></li>
            <li><a href="logout.php"><span class="glyphicon glyphicon-off"></span> User Log out</a></li>
        </ul>
		
		
           <!-- Log out menu ends --> 
    <?php } 
      else { ?>
     
               <!-- Normal nav bar -->
			   		
			<!-- Normal nav bar -->
		<ul class="nav navbar-nav">
				<li class="active"><a href="index.php">Home</a></li>
	  
                <li class="active">
                    <a class="nav-link" href="signin.php">Restaurants</a>
                </li>
                <li class="active">
                    <a class="nav-link" href="signin.php">Reviews</a>
				</li>
				
            </ul>
    
    
        <ul class="nav navbar-nav navbar-right">
		<li><a href="signup.php"><span class="glyphicon glyphicon-user"></span> User Sign Up</a></li>
      <li><a href="signin.php"><span class="glyphicon glyphicon-log-in"></span> User Sign In</a></li>
    </ul>
    
        

      <?php
           }
      ?>
      
         
      
    
  </div>
</nav>
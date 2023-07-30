<?php
include'header.php';
?>

<!-- Header section ends -->
<style>
   body {
            margin: 0;
            padding: 0;
            background: url("background.jpg") no-repeat center /cover;
            min-height: 100vh;
            display: flex;
			flex-direction: column;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            width: 100%

        }

        .search-box {
            display: flex;
            flex-direction: column;
            align-items: center;
            background: rgba(255, 255, 255, 0.8);
            padding: 50px 60px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 1000px;
            width: 100%;
			 margin-bottom: 20px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        button {
            background-color: #008CBA;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
        }

            button:hover {
                background-color: #006080;
            }

        input[type="text"] {
            border: 2px solid black;
            width: 500px;
        }
		
		.custom-jumbotron {
		background-color: #E6E8A3;
		}
					
		body {
		background-color: #16796F;

		}

    </style>



<form method="get" action="search.php">
  <div class="search-box">
    <h1>Search for Restaurants</h1>
    <input type="text" name="location" placeholder="Type location here">
    <button type="submit">Search</button>
  </div>
</form>

    <!-- if user has logged in or not -->
       
 <?php if(isset($_SESSION['u_id']) && !empty($_SESSION['u_id']) )
		 { ?>  
 
	<div class="container">
		<div class="jumbotron custom-jumbotron">

	 	 
				<div class="row">
				<div class="col-sm-6"> <img src="home.png" class="img-rounded" alt="Cinque Terre" width="350" height="350"> </div>
				<div class="col-sm-6">
				<a href="questionnaire.php"><h1>Click Here to Discover New Restaurants</h1></a>
				</div> 
		</div>
 
	</div>
	<?php }            
	
	else { ?>
	
	<div class="container">
		<div class="jumbotron custom-jumbotron">

    
			<div class="row">
			  <div class="col-sm-6"> <img src="home.png" class="img-rounded" alt="Cinque Terre" width="350" height="350"> </div>
			  <div class="col-sm-6">
				<a href="discover_signin.php"><h1>Click Here to Discover New Restaurants</h1></a>
				</div>

			</div>
		</div>
	</div>

	<?php 
	}  
	 ?>


                   
    
  


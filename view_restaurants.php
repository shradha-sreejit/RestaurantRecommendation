 <?php	
include 'header.php';
    include "database.php";
?>
<style>
	body {
		background-color: #16796F;

		}
		</style>
    
 <div class="container"> 
    
 <div class="jumbotron other-color">
<a href="restaurants_list.php" role="button" class="btn btn-success"> Back to Restaurant Page</a> <br> <br>

<div class="center-btn">
	  <a href="questionnaire.php" role="button" class="btn btn-success">Find More Restaurants</a> 
	  </div>
      
  
     
     
   	 <?php
        if(isset($_GET['cuisine']) && isset($_GET['price_range']) && isset($_GET['location']) && isset($_GET['dietary']) && isset($_GET['flavor']))
        {
            $r_cuisine = $_GET['cuisine'];
            $r_price_range = $_GET['price_range'];
            $r_location = $_GET['location'];
			$r_dietary = $_GET['dietary'];
			$r_flavor = $_GET ['flavor'];
        }
        else
        {
           echo "No resources available";
        }
        ?>
     
     
     
      <?php $user_id = $_SESSION['u_id'];?>
        <?php $sql_rest="SELECT r_name, location, price_range, cuisine, dietary, flavor, rating, website, image 
		FROM r_restaurant WHERE cuisine = '$r_cuisine' AND price_range = '$r_price_range' 
		AND location = '$r_location' AND dietary = '$r_dietary' AND flavor = '$r_flavor' "; ?>
       

		<?php $result = $conn->query($sql_rest);?>
		
     
        <?php if ($result->num_rows > 0) { ?>
       <div class="table-group">
	   
    <table class="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Location</th>
          <th>Price Range</th>
          <th>Cuisine</th>
          <th>Dietary</th>
          <th>Flavor</th>
          <th>Rating</th>
          <th>Website</th>
        </tr>
    </thead>
    <tbody>
	
	
      <?php while ($row = $result->fetch_assoc()) { ?>
        <tr>
          <td><?php echo $row['r_name']; ?></td>
          <td><?php echo $row['location']; ?></td>
          <td><?php echo $row['price_range']; ?></td>
          <td><?php echo $row['cuisine']; ?></td>
          <td><?php echo $row['dietary']; ?></td>
          <td><?php echo $row['flavor']; ?></td>
          <td><?php echo $row['rating']; ?></td>
          <td><?php echo $row['website']; ?></td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
<?php } else {?>
  <h2><?php echo "0 results"; ?></h2>
<?php } ?>
      
    </div>
      
  </div>

<?php include 'footer.html';?>
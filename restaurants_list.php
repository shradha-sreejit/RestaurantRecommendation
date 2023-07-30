 
    <?php	
include 'header.php';
    include "database.php";
?>

    <style>
	body {
		background-color: #16796F;

		}
		.custom-container {
   max-width: 1200px;
		}
		.center-btn {
		text-align: center;
		}
		</style>
  
    
 <div class="jumbotron other-color">
 
 <div class="center-btn">
  <a href="questionnaire.php" role="button" class="btn btn-success">Find Restaurant</a>
</div>


      
<p> <h2 class="text-center"> Restaurants </h2> </p>    
   
  
      
     <?php $user_id = $_SESSION['u_id'];?>
     <?php $sql_rest="SELECT r_id, r_name, location, price_range, cuisine, dietary, flavor,rating, website from r_restaurant";?>
      <?php $result = $conn->query($sql_rest);?>
     
    <?php if ($result->num_rows >0) {
    // output data of each row
    
    ?>
     
  
             <div class="table-group">
  <table class="table">
    <thead>
      <tr>
        <th>Sr.no</th>
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
          <td><?php echo $row['r_id']; ?></td>
          <td><?php echo $row['r_name']; ?></td>
          <td><?php echo $row['location']; ?></td>
          <td><?php echo $row['price_range']; ?></td>
          <td><?php echo $row['cuisine']; ?></td>
          <td><?php echo $row['dietary']; ?></td>
		  <td><?php echo $row['flavor']; ?></td>
		  <td><?php echo $row['rating']; ?></td>
		  <td><?php echo $row['website']; ?></td>
		  
           <?php
		  }
?>
        </tr>
      <?php } ?>
    </tbody>
  </table>
</div>


		
      		
  
     </div>
     
     
    </div>
      
  

<?php include 'footer.html';?> 
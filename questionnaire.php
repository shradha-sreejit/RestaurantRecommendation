<?php
include'header.php';

?>
<style>
	body {
		background-color: #16796F;

		}
		</style>

<?php
include "database.php"; // database connection

$r_cuisine = $r_price_range = $r_location = $r_dietary = $r_flavor = ""; // user questionnaire variables
$user_id = $_SESSION['u_id'];

$current_page = htmlspecialchars($_SERVER['PHP_SELF']);

if ($_SERVER["REQUEST_METHOD"] == "POST")
{

  //First name validation
  //if(!empty($_POST["cuisine"]) && !empty($_POST["price_range"]) && !empty($_POST["location"]) && isset($_POST["dietary"]) && isset($_POST["flavor"]) )
  //{
    $r_cuisine = $_POST["cuisine"];
    $r_price_range = isset($_POST["price_range"]) ? $_POST['price_range'] : '';  
    $r_location = $_POST["location"];
    $r_dietary = isset($_POST['dietary']) ? $_POST['dietary'] : '';
    $r_flavor = $_POST['flavor'];
  //}
    
   // else{
    ?>
<!--<div class="alert alert-danger">
  <strong>Alert!</strong> Please Complete all fields.
</div> --> 
    <?php
    }




$sql_questionnaire = "INSERT INTO `preferences` (`user_id`, `cuisine`, `price_range`, `location`, `dietary`, `flavor`)
VALUES ('$user_id', '$r_cuisine', '$r_price_range', '$r_location', '$r_dietary', '$r_flavor')";


//$sql_recommend = "SELECT r_name, location, opening_hours, closing_hours, price_range, cuisine, 
//dietary, flavor, rating, website, image FROM r_restaurant WHERE cuisine = '$cuisine' AND price_range = '$price_range'
//AND location = '$location'"; 


if(!empty($r_cuisine) && !empty($r_location) && !empty($r_price_range) && !empty($r_dietary) && !empty($r_flavor))
  {
if (($conn->query($sql_questionnaire) === TRUE))
{
   header('Location:view_restaurants.php');
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}

$conn->close();

?>
<style>
.center-btn {
		text-align: center;
		}
		
		.form-question {
  margin-bottom: 20px;
}

.form-question label {
  display: block;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

.form-question select {
  font-size: 16px;
  padding: 10px;
  width: 100%;
}

.form-group-button {
  text-align: center;
  margin-top: 30px;
}

</style>

<div class="container">
  <div class="jumbotron  other-color">
      <a href="restaurants_list.php" role="button" class="btn btn-success"> Back to Restaurant Page</a>
	  
	  
	  
 <div class="row">
   <br>
    <div class="col-sm-8" style="background-color:none;">
        <h2>Tell Us Your Preferences to Discover Restaurants </h2>
       </div>
   
  </div>
  <br>
      
 <form action="view_restaurants.php?cuisine=<?php echo urlencode($r_cuisine); ?>&price_range=<?php echo urlencode($r_price_range); ?>&location=<?php echo urlencode($r_location); ?>&dietary=<?php echo urlencode($r_dietary); ?>&flavor=<?php echo urlencode($r_flavor); ?>" method="get">

 
<form class="form-horizontal" role="form" method="post" action="<?php echo $current_page;?>" autocomplete="on">

 <div class="form-group">
  <div class="form-question">
    <label for="cuisine">Which cuisine would you like to have?</label>
    <select name="cuisine" id="cuisine">
      <option value="italian">Italian</option>
      <option value="mexican">Mexican</option>
      <option value="japanese">Japanese</option>
      <option value="indian">Indian</option>
     
    </select>
  </div>
  
  <div class="form-question">
    <label for="price_range">What is your preferred price range?</label>
    <select name="price_range" id="price_range">
      <option value="£">£</option>
      <option value="££">££</option>
      <option value="£££">£££</option>
    </select>
  </div>
  
  <div class="form-question">
    <label for="location">Please tell us your preferred location:</label>
    <select name="location" id="location">
      <option value="london">London</option>
      <option value="manchester">Manchester</option>
      <option value="bristol">Bristol</option>
      
    </select>
  </div>
  
  <div class="form-question">
    <label for="dietary">Any dietary restrictions?</label>
    <select name="dietary" id="dietary">
      <option value="not required">Not Required</option>
      <option value="vegetarian">Vegetarian</option>
      <option value="vegan">Vegan</option>
      <option value="gluten-free">Gluten-Free</option>
    </select>
  </div>
  
  <div class="form-question">
    <label for="flavor">Any preferred flavor you are craving for?</label>
    <select name="flavor" id="flavor">
      <option value="any">Any</option>
      <option value="sweet">Sweet</option>
      <option value="savory">Savory</option>
      <option value="spicy">Spicy</option>
      <option value="umami">Umami</option>
    </select>
  </div>
  
  <div class="form-group-button">
    <button type="submit" class="btn btn-default">Submit</button>
  </div>
</div>

            </form>
			</form>
        
    </section>
  </div>
 
</div>



<?php include'footer.html';?>

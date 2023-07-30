<?php	
include 'header.php';
include 'database.php';
?>

<style>
	body {
		background-color: #16796F;
	}
</style>
    
<div class="container"> 
	<div class="jumbotron other-color">
		<a href="index.php" role="button" class="btn btn-success"> Back to Homepage</a> <br> <br>

		<?php
		if (isset($_GET['location'])) {
			$searchLocation = $_GET['location'];

			// Perform database query based on the searchLocation
			$sql = "SELECT * FROM r_restaurant WHERE location LIKE '%$searchLocation%'";

			// Execute the query
			$result = $conn->query($sql);
		}
		?>

		<?php if ($result !== false && $result->num_rows > 0) { ?>
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
		<?php } else { ?>
			<h2><?php echo "0 results"; ?></h2>
		<?php } ?>
	</div>
</div>

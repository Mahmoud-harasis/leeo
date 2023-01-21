<!DOCTYPE html>

<html>

<head>

	<title>Shopping Cart</title>

	<link rel="stylesheet" type="text/css" href="css/cart.css">

	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

<?php include("hedar.php");  ?> 

<div class="container">

	<h1>Shopping Cart</h1>

	<div class="cart">

		<div class="products">

			<div class="product">

				<img src="image/m1.png">

				<div class="product-info">

					<h3 class="product-name">New Shoes</h3>

					<h4 class="product-price"> 1,000$</h4>

					<h4 class="product-offer">50%</h4>

					<p class="product-quantity">Qnt: <input value="1" name="">

					<p class="product-remove">

						<i class="fa fa-trash" aria-hidden="true"></i>

						<span class="remove">Remove</span>

					</p>

				</div>

			</div>

			<div class="product">

				<img src="image/m.png">

				<div class="product-info">

					<h3 class="product-name">New Bag</h3>

					<h4 class="product-price">2,000$</h4>

					<h4 class="product-offer">40%</h4>

					<p class="product-quantity">Qnt: <input value="1" name="">

					<p class="product-remove">

						<i class="fa fa-trash" aria-hidden="true"></i>

						<span class="remove">Remove</span>

					</p>

				</div>

			</div>

		</div>

		<div class="cart-total">

			<p>

				<span>Total Price</span>

				<span>3,000$</span>

			</p>

			<p>

				<span>Number of Items</span>

				<span>2</span>

			</p>

			<p>

				<span>You Save</span>

				<span>1,000$</span>

			</p>

			<a class="" href="checkout.php">Proceed to Checkout</a>

		</div>

	</div>

</div>

<?php include("footer.php");  ?> 

</body>


</html>


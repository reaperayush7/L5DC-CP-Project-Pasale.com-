@extends('layout')

@section('title', 'Help')
	
@section('content')
	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li href="/">Home</li>
                <li><a href="{{ route('shop.index') }}">Shop</a></li>
				<li class="active" >HELP</li>

			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->
    	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">Help</h2>
					</div>
				</div>
                <!-- section title -->
                </div>
		
				
				<div class="col-md-12">
				<h3 >How to Navigate the web app?</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li>First open the site.</li>
					<li>In the main landing page, there are different featured products listed.</li> 
					<li>If the product you want to buy is in the page you can click on the product name or on the hover link.</li> 
					<li>Or else you can visit the shop page or even navigate directly to any category of product you want from the main page.</li>
					<li>After that you can add the products to cart. The cart will be loaded with the products you add and automatically calculate all the price and tax amounts.</li>
					<li>Finally you can checkout from the cart. In the checkout form you can login or checkout as a guest.</li>
					<li>And also you can add any discount coupons you might have.</li>
					<li>All the necessary calculations are automatically performed.</li>
					<li>After a successful checkout a thank you page is loaded and then is redirected to home page.</li>
				</ul>
				</h5>				
				</div>

				<div class="col-md-12">
					&nbsp;
				</div>

				<div class="col-md-12">
				<h3 >How to Register or LogIn</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li> Go to the Join form from the link present in the header.</li>
					<li> There add all the user credentials and a minimum 8 digit password.</li>
					<li>Then click on Register. After successful registration, you are automatically redirected to landing page</li>
				</ul>
				</h5>				
				</div>

				<div class="col-md-12">
					&nbsp;
				</div>


				<div class="col-md-12">
				<h3 >How to Checkout without logging</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li> In the checkout form you can checkout as a guest.</li>
					<li> User credentials is save in orders table and then checout is finalized</li>
					<li>After a successful checkout a thank you page is loaded and then is redirected to home page.</li>
				</ul>
				</h5>				
				</div>

				<div class="col-md-12">
					&nbsp;
				</div>

				<div class="col-md-12">
				<h3 >How to Buy Products</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li> Go to the shop page.</li>
					<li> Look and find the product you want to buy.</li>
					<li>Click on the image link to go on the product page.</li>
					<li>There you can see whether the stock for the product is available or not</li>
					<li>If its available you can add it to cart and check it out providing certain credentials.</li>

				</ul>
				</h5>				
				</div>

				<div class="col-md-12">
					&nbsp;
				</div>

				<div class="col-md-12">
				<h3 >What if the item stock finishes while its in cart</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li> Certain checking functions are implemented right before checkout to see whether the quantity of the product is more than the quantity you order.</li>
					<li> If the product expires. You'll get and error message saying product has been expired.</li>
				</ul>
				</h5>				
				</div>

				<div class="col-md-12">
					&nbsp;
				</div>

				<div class="col-md-12">
				<h3 >What are the known limitations of the application?</h3>
				<h5>
				<ul style="list-style: bullet;">
					<li> Currently user can only buy a single quantity of product at any instance</li>
				</ul>
				</h5>				
				</div>


				</div>
                            </div>
                            </div>
 
@endsection
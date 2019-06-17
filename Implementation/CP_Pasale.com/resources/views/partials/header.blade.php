<!-- HEADER -->
<header>
	<!-- header -->
	<div id="header">
		<div class="container">
			<div class="pull-left">
				<!-- Logo -->
				<div class="header-logo">
					<a class="logo" href="#">
						<img src="/img/logo.png" alt="hero image">
					</a>
				</div>
			</div>
				
            <div class="pull-right">
				<ul class="header-btns">
					<!-- Account -->
					<li class="header-account dropdown default-dropdown">
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase">My Account <i class="fa fa-caret-down"></i></strong>
						</div>
						<a href="#" class="text-uppercase">Login</a> / <a href="#" class="text-uppercase">Join</a>
						<ul class="custom-menu">
							<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
							<li><a href="#"><i class="fa fa-heart-o"></i> My Wishlist</a></li>
							<li><a href="#"><i class="fa fa-check"></i> Checkout</a></li>
						</ul>
					</li>

				<!-- Cart -->
				<li class="header-cart dropdown default-dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
						<div class="header-btns-icon">
							<i class="fa fa-shopping-cart"></i>
							<span class="qty">{{ Cart::instance('default')->count() }}</span>
						</div>
						<strong class="text-uppercase">My Cart:</strong>
						<br>
						<span>{{ Cart::instance('default')->subtotal() }}</span>
					</a>
					<div class="custom-menu">
						<div id="shopping-cart">
							
							<div class="shopping-cart-btns">
								<a href="{{ route('cart.index') }}"><button class="main-btn">View Cart</button></a>
								<button class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button>
							</div>
						</div>
					</div>
				</li>

			<!-- Mobile nav toggle-->
			<li class="nav-toggle">
				<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
			</li>
			</ul>
		</div>
	</div>
</header>

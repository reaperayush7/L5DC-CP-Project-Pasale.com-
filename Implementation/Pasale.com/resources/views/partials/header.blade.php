<!-- HEADER -->
<header>
	<!-- header -->
	<div id="header">
		<div class="container">
			<div class="pull-left">
				<!-- Logo -->
				<div class="header-logo">
					<a class="logo" href="/">
						<img src="/img/logo.png" alt="hero image">
					</a>
				</div>
			</div>
				
            <div class="pull-right">
				<ul class="header-btns">
					<!-- Account -->
					<li class="header-account dropdown default-dropdown">
					@guest
					<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							
					<strong class="text-uppercase">	<a href="{{ route('login') }}" class="text-uppercase">Login</a> / <a href="{{ route('register') }}" class="text-uppercase">Join</a>
					</strong>
							@else
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							
						<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
						
							<strong class="text-uppercase"> {{ Auth::user()->name }} <i class="fa fa-caret-down"></i></strong>
						</div>
						<ul class="custom-menu">
							<li><a href="{{ route('users.edit') }}"><i class="fa fa-user-o"></i> My Account</a></li>
							<li><a href="{{ route('orders.index') }}"><i class="fa fa-heart-o"></i>Order History</a></li>
							<li>
							<a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> 
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>

							</li>	
					
						</ul>   
                        @endguest
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
						<span>{{ presentPrice(Cart::instance('default')->subtotal()) }}</span>
					</a>
					<div class="custom-menu">
						<div id="shopping-cart">
							
							<div class="shopping-cart-btns">
								<a href="{{ route('cart.index') }}"><button class="main-btn">View Cart</button></a>
								<a href="{{ route('checkout.index') }}"><button class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button></a>
							</div>
						</div>
					</div>

				</li>

			<!-- Mobile nav toggle-->
			<li class="nav-toggle">
				<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
			</li>
			<li>	<a href="{{ route('help.index') }}"> <div class="header-btns-icon">
							<i class="fa fa-question"></i>
							</div></a> </li>
					</div>
			</ul>
		</div>
	</div>
</header>

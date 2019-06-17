<!-- NAVIGATION -->
<div id="navigation">
	<div class="container">
		<div id="responsive-nav">
			<!-- category nav -->
			<div class="category-nav show-on-click">
					@yield('category_nav')
				</div>
			<div class="menu-nav">
				<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
				<ul class="menu-list">
					<li><a href="{{ route('landing-page')}}">Home</a></li>
					<li><a href="{{ route('shop.index')}}">Shop</a></li>
				</ul>
				</div>
		</div>
	</div>
</div>

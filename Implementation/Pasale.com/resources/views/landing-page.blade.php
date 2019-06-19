<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Pasale.com | Your own shop anywhere everywhere</title>

        <link href="/img/favicon.ico" rel="SHORTCUT ICON" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat%7CRoboto:300,400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    </head>


<body>
    @include('partials.header')
    @include('partials.search')
	@include('partials.nav')
	
		<!-- BREADCRUMB -->
		<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
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
						<h2 class="title">Featured Products</h2>
					</div>
				</div>
				<!-- section title -->

				<!-- Product Single -->
				@foreach($products as $product)
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
						<a href="{{ route('shop.show', $product->slug) }}"> <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button> </a>
							<img src="{{ asset('/img/products/'.$product->slug.'.jpg') }}" alt="">
						</div>
						<div class="product-body">
							<h3 class="product-price">{{ $product->presentPrice() }}</h3>
							<h2 class="product-name"><a href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a></h2>
							<div class="product-btns">
								<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>								
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
							</div>
						</div>
					</div>
				</div>
				@endforeach
                </div>	
				<div class="row col-md-4 col-md-offset-5">
				<a href="{{ route('shop.index')}}"><button class="primary-btn "><i class="fa fa-shopping-cart"></i> View All Products </button></a>
				</div>
		</div>
	</div>


    @include('partials.footer')

    
	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>
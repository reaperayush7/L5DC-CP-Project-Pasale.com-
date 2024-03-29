@extends('layout')
@section('category_nav')
	<!-- category nav -->
<div class="category-nav show-on-click">
	<span class="category-header">Categories <i class="fa fa-list"></i></span>
		<ul class="category-list">
			@foreach ($categories as $category)
				<li><a href="{{ route('shop.index', ['category' => $category->slug]) }}">{{ $category->name }}</a></li>
			@endforeach
		</ul>
</div>
				<!-- /category nav -->
				
@endsection

@section('extra-css')
<link rel="stylesheet" href="{{ asset('css/image.css') }}">
@endsection

@section('title', 'Home')
	
@section('content')

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li class="active">Home</li>
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
    <div class="hovereffect">
        <img class="img-responsive" src="{{ asset('/img/products/'.$product->slug.'.jpg') }}" alt="">
        <div class="overlay">
           <a class="info" href="{{ route('shop.show', $product->slug) }}">Quick View</a>
		</div>
		<div class="product-body">
							<h3 class="product-price">{{ $product->presentPrice() }}</h3>
							<h4 class="product-name"><a href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a></h4>
							
						</div>
	</div>
</div>
@endforeach

				<a href="{{ route('shop.index') }}"><button  type="submit" class="primary-btn add-to-cart"><i class="fa fa-store"></i> View All Products</button>
		</div>
	</div>


@endsection
    


</body>
</html>
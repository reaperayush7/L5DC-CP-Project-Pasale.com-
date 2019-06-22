@extends('layout')

@section('title', $product->name)


@section('content')

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a href="{{ route('shop.index') }}">Shop</a></li>
				<li class="active">{{ $product->name}}</li>
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
				<!--  Product Details -->
				<div class="product product-details clearfix">
					<div class="col-md-6">
						<div id="product-main-view">
							<div class="product-view">
								<img src="{{ asset('/img/products/'.$product->slug.'.jpg') }}" alt="">
							</div>

						</div>

					</div>
					<div class="col-md-6">
						<div class="product-body">
							<h2 class="product-name">{{ $product->name }}</h2>
							<h3 class="product-price">{{ $product->presentPrice() }}</h3>
							<p><strong>Availability:</strong> In Stock</p>
							<strong>Details: {!! $product->details !!}</strong>
							<p>
							{!! $product->description !!}
							</p>

							<div class="product-btns">
							<form action="{{ route('cart.store') }}" method="POST">
								{{ csrf_field() }}
								<input type="hidden" name="id" value="{{ $product->id }}">
								<input type="hidden" name="name" value="{{ $product->name }}">
								<input type="hidden" name="price" value="{{ $product->price }}">
								<button type="submit" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Details -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
    <!-- /section -->

	@include('partials.might-like')



@endsection

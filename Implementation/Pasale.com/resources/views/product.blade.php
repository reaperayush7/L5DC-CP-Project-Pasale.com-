@extends('layout')

@section('title', $product->name)

@section('extra-css')

<style>
.badge {
    display: inline-block;
    padding: .25em .4em;
    font-size: 100%;
    font-weight: 700;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25rem;
}
.badge-success {
    color: #fff;
    background-color: #28a745;
}

.badge-danger {
    color: #fff;
    background-color: #dc3545;
}

.badge-warning {
    color: #212529;
    background-color: #ffc107;
}
</style>

@endsection

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
							<p><strong>Availability:</strong>{!! $stockLevel !!}</p>
							<strong>Details: {!! $product->details !!}</strong>
							<p>
							{!! $product->description !!}
							</p>

							<div class="product-btns">
							
							@if ($product->quantity > 0)
							<form action="{{ route('cart.store') }}" method="POST">
								{{ csrf_field() }}
								<input type="hidden" name="id" value="{{ $product->id }}">
								<input type="hidden" name="name" value="{{ $product->name }}">
								<input type="hidden" name="price" value="{{ $product->price }}">
								<button type="submit" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
								</form>
								@endif
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

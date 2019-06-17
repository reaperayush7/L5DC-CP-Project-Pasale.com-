@extends('layout')
@section('category_nav')
<span class="category-header">Categories <i class="fa fa-list"></i></span>
					<ul class="category-list">
						@foreach ($categories as $category)
						<li><a href="{{ route('shop.index', ['category' => $category->slug]) }}">{{ $category->name }}</a></li>
						@endforeach					
					</ul>
@endsection

@section('title', 'Shop')

@section('content')

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li class="active">Shop</li>
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
						<h2 class="title">{{ $categoryName }}</h2>
					</div>
				</div>
						
				<!-- section title -->
			</div>

				
				@forelse ($products as $product)
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
                        <a href="{{ route('shop.show', $product->slug) }}"> <button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Quick view </a></button>
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
				@empty

				<div class="row">
				<!-- section title -->
				<div class="col-md-12">
						<h2 class="title">No Items Found</h2>
				</div>
				</div>
				@endforelse

            </div>
		</div>
	</div>

@endsection
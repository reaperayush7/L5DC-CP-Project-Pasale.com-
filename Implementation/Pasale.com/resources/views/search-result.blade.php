@extends('layout')


@section('title', 'Search Results')

@section('extra-css')
<link rel="stylesheet" href="{{ asset('css/image.css') }}">
@endsection

@section('content')
<div class="section">
<div class="container">
    <div class="row">
       <h1>Search Results - {{ $products->count() }} {{ request()->input('query') }}'s found</h1>
   </div>

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


</div>
</div>
</div>
@endsection
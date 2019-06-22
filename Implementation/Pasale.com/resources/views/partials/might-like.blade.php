<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">You Might Like Following Similar Products</h2>
					</div>
				</div>
				<!-- section title -->
                
                @foreach($mightAlsoLike as $product)
				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
						<a href="{{ route('shop.show', $product->slug) }}"> <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button> </a>
							<img src="{{ asset('/img/products/'.$product->slug.'.jpg') }}" alt="">
						</div>
						<div class="product-body">
							<h3 class="product-price">{{ $product->presentPrice() }}</h3>
							<h2 class="product-name"><a href="#">{{ $product->name }}</a></h2>
							
						</div>
					</div>
                </div>
                @endforeach
            </div>	
		</div>
	</div>

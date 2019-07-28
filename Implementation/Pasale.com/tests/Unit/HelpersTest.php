<?php

namespace Tests\Unit;

use App\Product;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;

class HelpersTest extends TestCase
{
    /** @test */
    public function can_get_formatted_price()
    {
        $product = factory(Product::class)->make([
            'name' => 'Product 1',
            'price' => 2999
        ]);

        $this->assertEquals('$2999.00', presentPrice($product->price));
    }
}
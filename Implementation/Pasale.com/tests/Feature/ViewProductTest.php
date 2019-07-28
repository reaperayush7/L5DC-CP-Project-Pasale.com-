<?php

namespace Tests\Feature;

use App\Product;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;

class ViewProductTest extends TestCase
{


        /** @test */
        public function can_view_product_details()
        {
            $product = factory(Product::class)->create([
                'name' => 'Laptop 1',
                'slug' => 'laptop-1',
                'details' => '15 inch, 2 TB SSD, 32GB RAM',
                'price' => 2499,
                'description' => 'This is a description for Laptop 1.',
            ]);
    
            $response = $this->get('/shop/'.$product->slug);
    
            $response->assertStatus(200);
            $response->assertSee('Laptop 1');
            $response->assertSee('2 TB SSD');
            $response->assertSee('2499.00');
            $response->assertSee('This is a description for Laptop 1');
        }

}

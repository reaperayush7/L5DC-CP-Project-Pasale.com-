<?php

namespace Tests\Feature;

use App\Product;
use Tests\TestCase;

class LandingPageTest extends TestCase
{

     /** @test */ 
    public function landing_page_loads_correctly()
    {
            //Act
            $response = $this->get('/');
    
            //Assert
            $response->assertStatus(200);
            $response->assertSee('Pasale.com');
            $response->assertSee('Ayush Pandey');
    }


    /** @test */
    public function featured_product_is_visible()
    {
        // Arrange
        $featuredProduct = factory(Product::class)->create([
            'featured' => true,
            'name' => 'Desktop 1',
            'price' => 3611,
        ]);

        // Act
        $response = $this->get('/');

        // Assert
        $response->assertSee($featuredProduct->name);
        $response->assertSee('$3611.00');
    }


}

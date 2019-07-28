<?php

namespace Tests\Feature;

use App\Product;
use App\Category;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;


class ViewShopPageTest extends TestCase
{

         /** @test */ 
         public function shop_page_loads_correctly()
         {
                 //Act
                 $response = $this->get('/shop');
         
                 //Assert
                 $response->assertStatus(200);
                 $response->assertSee('Featured');
         }

    /** @test */
    public function shop_featured_product_is_visible()
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

       /** @test */
       public function category_page_shows_correct_products()
       {
           $laptop1 = factory(Product::class)->create(['name' => 'Laptop 1']);
           $laptop2 = factory(Product::class)->create(['name' => 'Laptop 2']);
   
           $laptopsCategory = Category::create([
               'name' => 'laptops',
               'slug' => 'laptops',
           ]);
   
           $laptop1->categories()->attach($laptopsCategory->id);
           $laptop2->categories()->attach($laptopsCategory->id);
   
           $response = $this->get('/shop?category=laptops');
   
           $response->assertSee('Laptop 1');
           $response->assertSee('Laptop 2');
       }
   
}

<?php

use App\Product;
use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::create([
            'name' => 'Macbook Pro',
            'slug' => 'macbookpro',
            'details' => '15inch, 1TB SSD, 32GB RAM',
            'price' => 2999,
            'description' =>'Best laptop money can buy',
        ]);
        Product::create([
            'name' => 'Laptop1',
            'slug' => 'laptop-1',
            'details' => '15inch, 1TB SSD, 32GB RAM',
            'price' => 2999,
            'description' =>'Best laptop money can buy',
        ]);
        Product::create([
            'name' => 'Laptop2',
            'slug' => 'laptop-2',
            'details' => '15inch, 1TB SSD, 32GB RAM',
            'price' => 2999,
            'description' =>'Best laptop money can buy',
        ]);
        Product::create([
            'name' => 'Laptop3',
            'slug' => 'laptop-3',
            'details' => '15inch, 1TB SSD, 32GB RAM',
            'price' => 2999,
            'description' =>'Best laptop money can buy',
        ]);
        Product::create([
            'name' => 'Laptop4',
            'slug' => 'laptop-4',
            'details' => '15inch, 1TB SSD, 32GB RAM',
            'price' => 2999,
            'description' =>'Best laptop money can buy',
        ]);
    }
}

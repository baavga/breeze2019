<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class ProductsController extends Controller
{
    public function show($id){
        $product = Product::find($id);
        $products = Product::inRandomOrder()->get()->take(3);
        return view('products.show',array('product'=>$product, 'products'=>$products));
    }
}

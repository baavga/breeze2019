<?php

namespace App\Http\Controllers;
use App\Product;
use Illuminate\Http\Request;
class PagesController extends Controller
{
    public function home(){
        $products = Product::orderBy('created_at', 'desc' )->paginate(6);
        return view('pages.home')->with('products',$products);
    }
    public function about(){
        return view('pages.about');
    }
    public function howto(){
        return view('pages.howto');
    }
    public function contactus(){
        return view('pages.contactus');
    }
    
}

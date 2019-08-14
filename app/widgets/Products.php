<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager; 
class Products extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Product::count();
        $string = 'Product';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-bag',
            'title'  => "{$count} {$string}",
            'text'   =>  'You have'.$count.'product in your database, Click on button below to view all Products.',
            'button' => [
                'text' => 'View all Products',
                'link' => route('voyager.products.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }
}

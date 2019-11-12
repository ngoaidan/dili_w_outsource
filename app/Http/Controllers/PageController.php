<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Backpack\PageManager\app\Models\Page;
use App\Models\Setting;
use App\Models\Product;
use App\Models\Article;
use App\Models\HomeImages;
use DB;

class PageController extends Controller
{
    public function index($slug)
    {
        $page = Page::findBySlug($slug);

        if (!$page)
        {
            abort(404, 'Please go back to our <a href="'.url('').'">homepage</a>.');
        }else{
            //tao menu doi voi page 1 trang
            if ($page->template=="home") {
                $this->data['mainMenuURL'] = '';
            }else{
                $this->data['mainMenuURL'] = url('');
            }
        }

        if($page->template=="home"){
            $homeImage = HomeImages::get(); 
            foreach ($homeImage as $value) {
                $this->data[$value->key] = $value->image;
            }
        }

        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();
        $this->data['products'] = Product::get();
        //setting
        $settings = Setting::all();
        foreach ($settings as $value) {
            $this->data[$value->key] = $value->value;
        }
        $this->data['articles'] = DB::select('SELECT `id`, `title`, `slug`, `image`, `intro` 
                                     FROM `articles`  
                                    WHERE 1'
                                    );
        
        return view('pages.'.$page->template, $this->data);
    }



    public function product($slug)
    {
        $page = Page::findBySlug('product');

        if (!$page)
        {
            abort(404, 'Please go back to our <a href="'.url('').'">homepage</a>.');
        }else{
            //tao menu doi voi page 1 trang
            if ($page->template=="home") {
                $this->data['mainMenuURL'] = '';
            }else{
                $this->data['mainMenuURL'] = url('');
            }
        }

        $product = DB::select('SELECT * 
                                     FROM `products`  
                                    WHERE `slug` = ? ', [$slug]
                                );
        
        if (!$product)
        {
            abort(404, 'Không tìm thấy sản phẩm! <a href="'.url('').'">homepage</a>.');
        }else{
            $this->data['product'] = $product[0];
        }
        
        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();
        //setting
        $settings = Setting::all();
        foreach ($settings as $value) {
            $this->data[$value->key] = $value->value;
        }
        
        
        return view('pages.'.$page->template, $this->data);
        
    }

    public function post($slug)
    {
        $page = Page::findBySlug('post');

        if (!$page)
        {
            abort(404, 'Please go back to our <a href="'.url('').'">homepage</a>.');
        }else{
            //tao menu doi voi page 1 trang
            if ($page->template=="home") {
                $this->data['mainMenuURL'] = '';
            }else{
                $this->data['mainMenuURL'] = url('');
            }
        }

        $post = DB::select('SELECT * 
                                     FROM `articles`  
                                    WHERE `slug` = ? ', [$slug]
                                );
        
        if (!$post)
        {
            abort(404, 'Không tìm thấy sản phẩm! <a href="'.url('').'">homepage</a>.');
        }else{
            $this->data['post'] = $post[0];
        }
        
        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();
        //setting
        $settings = Setting::all();
        foreach ($settings as $value) {
            $this->data[$value->key] = $value->value;
        }
       
        
        return view('pages.'.$page->template, $this->data);
    }

    public function PriceList()
    {
        $page = Page::findBySlug('bang-bao-gia-si-cafe');

        if (!$page)
        {
            abort(404, 'Please go back to our <a href="'.url('').'">homepage</a>.');
        }else{
            //tao menu doi voi page 1 trang
            if ($page->template=="home") {
                $this->data['mainMenuURL'] = '';
            }else{
                $this->data['mainMenuURL'] = url('');
            }
        }

        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();
        //setting
        $settings = Setting::all();
        foreach ($settings as $value) {
            $this->data[$value->key] = $value->value;
        }
       
        return view('pages.'.$page->template, $this->data);
    }

}

<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return redirect('home');
});

Route::group(['prefix' => 'admin', 'middleware' => ['web', 'admin'], 'namespace' => 'Admin'], function () {
    // Backpack\MenuCRUD
    CRUD::resource('menu-item', 'MenuItemCrudController');
    // Backpack\NewsCRUD (Refactored)
    CRUD::resource('article', 'ArticleCrudController');
    CRUD::resource('article-category', 'ArticleCategoryCrudController');
    CRUD::resource('article-tag', 'ArticleTagCrudController');
    //Products CRUD (Category, Brand, Product)
    CRUD::resource('product-category', 'ProductCategoryCrudController');
    CRUD::resource('product-item', 'ProductCrudController');
    CRUD::resource('product-brand', 'BrandCrudController');
    CRUD::resource('home-images', 'HomeImagesCrudController');
});

Route::get('/san-pham&slug={slug}', 'PageController@product');
Route::get('/post&slug={slug}', 'PageController@post');
Route::get('/bang-bao-gia-si-cafe', 'PageController@PriceList');

Route::get('/dich-vu/{slug}', 'PageController@service');

/** CATCH-ALL ROUTE for Backpack/PageManager - needs to be at the end of your routes.php file  **/
Route::get('{page}/{subs?}', ['uses' => 'PageController@index'])
    ->where(['page' => '^((?!admin).)*$', 'subs' => '.*']);

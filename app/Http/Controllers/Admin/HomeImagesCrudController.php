<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\HomeImagesRequest as StoreRequest;
use App\Http\Requests\HomeImagesRequest as UpdateRequest;

class HomeImagesCrudController extends CrudController
{
    public function __construct()
    {
        parent::__construct();  

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\HomeImages');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/home-images');
        $this->crud->setEntityNameStrings('homeimages', 'home_images');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

        // $this->crud->setFromDb();

        $this->crud->denyAccess(['create', 'delete']);

        $this->crud->setColumns([
            // [
            //     'name'  => 'key',
            //     'label' => 'key',
            //     'type' => 'text',
            // ],
            [
                'name'  => 'image',
                'label' => 'image',
                'type' => 'upload_multiple',
            ],
            [
                'name'  => 'description',
                'label' => 'description',
                'type' => 'text',
            ],
        ]);

        $this->crud->addField([    // Image
                                'name' => 'image',
                                'label' => 'Image',
                                'type' => 'browse',
                            ]);
        
        $this->crud->enableAjaxTable();

        
    }

    public function store(StoreRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::storeCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::updateCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }
}

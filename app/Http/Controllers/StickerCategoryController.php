<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Setting;
use App\Models\StickerCategory;
use Session;
class StickerCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Admin::isPermission('category')) {
            $data['categories'] = StickerCategory::where('owner_id', Session::get('userid'))->orderBy('id', 'DESC')->paginate(22);
            // echo(json_encode($data['posts']));
            // die();
            return view('stickers.category.index',$data);
        } else return view('stickers.category.index');
    }
    
     public function stickercategory_status(Request $request)
    {
        echo("okk");
        $posts = StickerCategory::find($request->get("id"));
        $posts->status = ($request->get("checked")=="true")?0:1;
        $posts->save();
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('stickers.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
             'title' => 'required',
        ]);
        $id = StickerCategory::create([
            "name" => $request->get("title"),
            "owner_id" => Session::get('userid')
        ]);
         return redirect()->route('stickercategory.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
        $data['category'] = StickerCategory::find($id);
        return view('stickers.category.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
             'title' => 'required',
        ]);
        $posts = StickerCategory::find($id);
        $posts->name = $request->get("title");
        $posts->save();
        return redirect()->route('stickercategory.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        StickerCategory::find($id)->delete();
        return redirect()->route('stickercategory.index');
    }
}

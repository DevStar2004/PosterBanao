<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Setting;
use App\Models\LogoCategory;

use Session;
class LogoCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Admin::isPermission('category')) {
            if(Session::get('admin_type') == 'Super')
                $data['categories'] = LogoCategory::orderBy('id', 'DESC')->paginate(12);
            else
                $data['categories'] = LogoCategory::where('owner_id', Session::get('userid'))->orderBy('id', 'DESC')->paginate(12);
            // echo(json_encode($data['posts']));
            // die();
            return view('logo.category.index',$data);
        } else return view('logo.category.index');
    }
    
     public function logocategory_status(Request $request)
    {
        $posts = LogoCategory::find($request->get("id"));
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
        return view('logo.category.create');
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
        $id = LogoCategory::create([
            "name" => $request->get("title"),
            'owner_id' => Session::get('userid')
        ]);
         return redirect()->route('logocategory.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['category'] = LogoCategory::find($id);
        return view('logo.category.edit',$data);
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
        $posts = LogoCategory::find($id);
        $posts->name = $request->get("title");
        $posts->save();
        return redirect()->route('logocategory.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        LogoCategory::find($id)->delete();
        return redirect()->route('logocategory.index');
    }
}

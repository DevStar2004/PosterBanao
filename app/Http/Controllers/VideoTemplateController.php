<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VideoTemplate;
use App\Models\VideoTemplateCategory;
use App\Models\Setting;
use App\Models\Language;
use App\Models\Admin;
use Illuminate\Support\Str;
use Session;
class VideoTemplateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Admin::isPermission('video')) {
            $data['posts'] = VideoTemplate::where('owner_id', Session::get('userid'))->orderBy('id', 'DESC')->paginate(12);
            return view('videoTemplate.index', $data);
        } else {
            return view('videoTemplate.index');
        }
    }

    public function filterby_type($type)
    {
        $data['posts'] = VideoTemplate::where('type', $type)->orderBy('id', 'DESC')->paginate(12);
        $data['type'] = $type;

        return view('videoTemplate.index', $data);
    }

    public function video_status(Request $request)
    {
        // echo("okk");
        $festivals = VideoTemplate::find($request->get('id'));
        $festivals->status = $request->get('checked') == 'true' ? 0 : 1;
        $festivals->save();
    }

    public function premium_action(Request $request)
    {
        $festivals = VideoTemplate::find($request->get('id'));
        $festivals->premium = $request->get('type');
        $festivals->save();
    }

    public function video_action(Request $request)
    {
        $ids = explode(',', $request->posts_ids);
        if ($request->posts_ids != null) {
            if ($request->action_type == 'enable') {
                foreach ($ids as $id) {
                    $posts = VideoTemplate::find($id);
                    $posts->status = 0;
                    $posts->save();
                }
            }

            if ($request->action_type == 'disable') {
                foreach ($ids as $id) {
                    $posts = VideoTemplate::find($id);
                    $posts->status = 1;
                    $posts->save();
                }
            }

            if ($request->action_type == 'delete') {
                foreach ($ids as $id) {
                    $posts = VideoTemplate::find($id);
                    @unlink($posts->video_url);
                    @unlink($posts->zip_url);
                    VideoTemplate::find($id)->delete();
                }
            }
        }
        return redirect()->route('videotemplate.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['languages'] = Language::where('status', '0')->get();
        $data['categories'] = VideoTemplateCategory::where('status', '0')->get();

        return view('videoTemplate.create', $data);
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
            'video' => 'required|mimes:mp4,ogx,oga,ogv,ogg,webm|max:30720',
            'zip' => 'required',
            'title' => 'required',
            'type' => 'required',
            'category' => 'required',
            'language' => 'required',
        ]);

        $video = new VideoTemplate();
        $video->title = $request->get('title');
        $video->category_id = $request->get('category');
        $video->type = $request->get('type');
        $video->language = $request->get('language');

        if ($request->file('video') && $request->file('video')->isValid()) {
            $videof = $request->file('video');

            $extension = $videof->getClientOriginalExtension();
            $fileName = Str::uuid() . '.' . $extension;

            if (Setting::getValue('storage_type') == 'digitalOccean') {
                $item_url = Storage::disk('spaces')->put('uploads/video/' . $fileName, file_get_contents($videof), 'public');
                $item_url = env('DO_SPACES_URL') . '/uploads/video/' . $fileName;
            } else {
                $videof->move('uploads/video', $fileName);
                $item_url = 'uploads/video/' . $fileName;
            }

            $video->thumb_url = $item_url;
            $video->video_url = $item_url;
        }
        if ($request->file('zip') && $request->file('zip')->isValid()) {
            $zip = $request->file('zip');

            $extension = $zip->getClientOriginalExtension();
            $fileName = Str::uuid() . '.' . $extension;

            if (Setting::getValue('storage_type') == 'digitalOccean') {
                $zip_url = Storage::disk('spaces')->put('uploads/videoTemplate/' . $fileName, file_get_contents($zip), 'public');
                $zip_url = env('DO_SPACES_URL') . '/uploads/videoTemplate/' . $fileName;
            } else {
                $zip->move('uploads/videoTemplate', $fileName);
                $zip_url = 'uploads/videoTemplate/' . $fileName;
            }
            $video->zip_url = $zip_url;
        }
        $video->owner_id = Session::get('userid');
        $video->save();
        return redirect()->route('videotemplate.index');
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
        $data['video'] = VideoTemplate::find($id);
        $data['languages'] = Language::where('status', '0')->get();
        $data['categories'] = VideoTemplateCategory::where('status', '0')->get();
        return view('videoTemplate.edit', $data);
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
            'type' => 'required',
            'category' => 'required',
            'language' => 'required',
        ]);

        $video = VideoTemplate::find($id);
        $video->title = $request->get('title');
        $video->category_id = $request->get('category');
        $video->type = $request->get('type');
        $video->language = $request->get('language');

        if ($request->file('video') && $request->file('video')->isValid()) {
            $videof = $request->file('video');

            $extension = $videof->getClientOriginalExtension();
            $fileName = Str::uuid() . '.' . $extension;

            if (Setting::getValue('storage_type') == 'digitalOccean') {
                $item_url = Storage::disk('spaces')->put('uploads/video/' . $fileName, file_get_contents($videof), 'public');
                $item_url = env('DO_SPACES_URL') . '/uploads/video/' . $fileName;
            } else {
                $videof->move('uploads/video', $fileName);
                $item_url = 'uploads/video/' . $fileName;
                @unlink($video->video_url);
            }
            $video->thumb_url = $item_url;
            $video->video_url = $item_url;
        }
        if ($request->file('zip') && $request->file('zip')->isValid()) {
            $zip = $request->file('zip');

            $extension = $zip->getClientOriginalExtension();
            $fileName = Str::uuid() . '.' . $extension;

            if (Setting::getValue('storage_type') == 'digitalOccean') {
                $zip_url = Storage::disk('spaces')->put('uploads/videoTemplate/' . $fileName, file_get_contents($zip), 'public');
                $zip_url = env('DO_SPACES_URL') . '/uploads/videoTemplate/' . $fileName;
            } else {
                $zip->move('uploads/videoTemplate', $fileName);
                $zip_url = 'uploads/videoTemplate/' . $fileName;
            }
            @unlink($video->zip_url);
            $video->zip_url = $zip_url;
        }
        $video->save();
        return redirect()->route('videotemplate.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $posts = videoTemplate::find($id);
        @unlink($posts->video_url);
        @unlink($posts->zip_url);

        videoTemplate::find($id)->delete();
        return redirect()->route('videotemplate.index');
    }
}

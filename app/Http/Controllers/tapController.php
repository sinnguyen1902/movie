<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\phim;
use App\Models\quocgia;
use App\Models\theloai;
use App\Models\danhmuc;
use App\Models\phim_theloai;
use App\Models\tap;
use Carbon\Carbon;
use Storage;
use File;

class tapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //$list_movie = phim::orderBy('id', 'desc')->pluck('title', 'id');
        $list_movie = phim::pluck('title', 'id');
        $list_episode = tap::with('movie')->orderBy('id', 'desc')->get();
        //dd($list_movie);
        return view('admincp.episode.form', compact('list_movie','list_episode'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $episode = new tap();
        $episode->movie_id = $request['movie_id'];
        $episode->link_phim = $request['link'];
        $episode->episode = $request['episode'];
        $episode->create_at = Carbon::now('Asia/Ho_Chi_Minh');
        $episode->update_at = Carbon::now('Asia/Ho_Chi_Minh');
        $get_video = $request->file('video');
        
        if($get_video){
            $get_name_video = $get_video->getClientOriginalName();
            $name_video = current(explode('.',$get_name_video ));
            $new_video = $name_video.rand(0,9999).'.'.$get_video->getClientOriginalExtension();
            $get_video->move('uploads/upload_eps',$new_video);
           $episode->video = $new_video;    
        }


        $episode->save();
        return redirect()->back();
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
        $list_movie = phim::pluck('title', 'id');
        $list_episode = tap::with('movie')->orderBy('id', 'desc')->get();
        $episode = tap::find($id);
        
        //dd($episode);
        return view('admincp.episode.form', compact('list_movie','list_episode', 'episode'));
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
        $data = $request->all();
        $episode = tap::find($id);
        $episode->movie_id = $request['movie_id'];
        $episode->link_phim = $request['link'];
        $episode->episode = $request['episode'];
        //$episode->create_at = Carbon::now('Asia/Ho_Chi_Minh');
        $episode->update_at = Carbon::now('Asia/Ho_Chi_Minh');
        $get_video = $request->file('video');
        
        if($get_video){
            if(!empty($episode->video)){
                unlink('uploads/upload_eps/'.$episode->video);
            }
            $get_name_video = $get_video->getClientOriginalName();
            $name_video = current(explode('.',$get_name_video ));
            $new_video = $name_video.rand(0,9999).'.'.$get_video->getClientOriginalExtension();
            $get_video->move('uploads/upload_eps',$new_video);
           $episode->video = $new_video;    
        }
        $episode->save();
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tap = tap::find($id);
        
        $tap->delete();
        return redirect()->back();
    }
}
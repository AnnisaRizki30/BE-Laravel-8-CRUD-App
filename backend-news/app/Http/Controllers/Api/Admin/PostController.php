<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function index()
    {
    //get post
    $posts = Post::with('user')->when(request()->q,
    function($posts) {
    $posts = $posts->where('title', 'like', '%'.
    request()->q . '%');
    })->latest()->paginate(5);
    //return with Api Resource
    return new PostResource(true, 'List Data Post', $posts);
    }


    /**
    * Store a newly created resource in storage.
    *
    * @param \Illuminate\Http\Request $request
    * @return \Illuminate\Http\Response
    */
    public function store(Request $request)
    {
    $validator = Validator::make($request->all(), [
    'title' => 'required|unique:posts',
    'desc' => 'required',
    ]);
    if ($validator->fails()) {
    return response()->json($validator->errors(), 422);
    }
    //create post
    $post = Post::create([
    'title' => $request->title,
    'user_id' => auth()->guard('api_admin')->user()->id,
    'desc' => $request->desc,
    ]);
    if($post) {
    //return success with Api Resource
    return new PostResource(true, 'Data Post Berhasil Disimpan!', $post);
    }
    //return failed with Api Resource
    return new PostResource(false, 'Data Post Gagal Disimpan!', null);
    }

    /**
    * Display the specified resource.
    *
    * @param int $id
    * @return \Illuminate\Http\Response
    */
    public function show($id)
    {
    $post = Post::whereId($id)->first();
    if($post) {
    //return success with Api Resource
    return new PostResource(true, 'Detail Data Post!',
    $post);
    }
    //return failed with Api Resource
    return new PostResource(false, 'Detail Data Post Tidak Ditemukan!', null);
    }

    /**
    * Update the specified resource in storage.
    *
    * @param \Illuminate\Http\Request $request
    * @param int $id
    * @return \Illuminate\Http\Response
    */
    public function update(Request $request, Post $post)
    {
    $validator = Validator::make($request->all(), [
    'title' => 'required|unique:posts,title,'.$post->id,
    'desc' => 'required',
    ]);
    if ($validator->fails()) {
    return response()->json($validator->errors(), 422);
    }
    //update post
    $post->update([
    'title' => $request->title,
    'user_id' => auth()->guard('api_admin')->user()->id,
    'desc' => $request->desc,
    ]);
    if($post) {
    //return success with Api Resource
    return new PostResource(true, 'Data Post Berhasil Diupdate!', $post);
    }
    //return failed with Api Resource
    return new PostResource(false, 'Data Post Gagal Diupdate!', null);
    }


    /**
    * Remove the specified resource from storage.
    *
    * @param int $id
    * @return \Illuminate\Http\Response
    */
    public function destroy(Post $post)
    {
    if($post->delete()) {
    //return success with Api Resource
    return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
    //return failed with Api Resource
    return new PostResource(false, 'Data Post Gagal Dihapus!', null);
    }

}


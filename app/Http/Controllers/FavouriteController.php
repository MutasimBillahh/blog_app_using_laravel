<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavouriteController extends Controller
{
    public function add($post){

        $user = Auth::user();
        $isFaourite = $user->favourite_posts()->where('post_id',$post)->count();

        if ($isFaourite ==0) {
            $user->favourite_posts()->attach($post);
             Toastr::success('message', 'Post successfully ADDED to your Favourite List');
             return redirect()->back();

        }else{
             $user->favourite_posts()->detach($post);
             Toastr::success('message', 'Post successfully removed to your Favourite List');
             return redirect()->back();
        }
    }
}

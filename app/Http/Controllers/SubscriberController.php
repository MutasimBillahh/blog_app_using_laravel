<?php

namespace App\Http\Controllers;

use App\Subscriber;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    public function store(Request $request){


        $this->validate($request,[
            'email' =>'required|unique:subscribers'

        ]);

        $subscriber = new Subscriber();
        $subscriber->email = $request->email;
        $subscriber->save();
        Toastr::success('message', 'You HAVE ADDED TO OUR SUBSCRIBER LiSt');

        return redirect()->back();
    }
}

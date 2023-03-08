<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class SettingsController extends Controller
{
     public function index(){
        return view('author.settings');
    }



    public function updateProfile(Request $request){
        $this->validate($request,[

            'name' =>'required',
            'email' =>'required|email',
            'image' =>'required|image',

        ]);
            $image = $request->file('image');
            $slug = str_slug($request->name);
            $user = User::findOrFail(Auth::id());

            if (isset($image)) {

                $currentdate = Carbon::now()->toDateString();
                $imagename = $slug.'-'.$currentdate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

                if (!Storage::disk('public')->exists('profile')) {
                    Storage::disk('public')->makeDirectory('profile');
                }

                /*Delete Old Image*/
                if (Storage::disk('public')->exists('profile/'.$user->image)) {
                    Storage::disk('public')->delete('profile/'.$user->image);
                }

                $profile = Image::make($image)->resize(500,500)->save($imagename);
                Storage::disk('public')->put('profile/'.$imagename,$profile);

            }else{

                    $imagename = $user->image;

            }

            $user->name = $request->name;
            $user->email = $request->email;
            $user->image = $imagename;
            $user->about = $request->about;
            $user->save();
            Toastr::success('message', 'Profile Updated successfully');
        return redirect()->back();


    }


    public function updatePassword(Request $request){

        $this->validate($request,[

            'old_password' =>'required',
            'password' =>'required|confirmed',
            
        ]);


        $hashedPassword  = Auth::user()->password;
        if (Hash::check($request->old_password,$hashedPassword)) {
            
            if (!Hash::check($request->password,$hashedPassword)) {
                
                $user = User::find(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();
                Toastr::success('message', 'Password successfully Changed');
                Auth::logout();
                return redirect()->back();

            }else{
                 Toastr::error('message', 'New Password Cannot Be The Same As Old Password');
                 return redirect()->back();
                
            }
        }else{

            Toastr::error('Current Password Not Matched');
                 return redirect()->back();
        }
    }
}

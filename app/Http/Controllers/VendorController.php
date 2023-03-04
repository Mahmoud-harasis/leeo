<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class VendorController extends Controller
{
    public function vendorDashboard(){
        return view('vendor.index');
    }


    public function VendorLogin(){
        return view('vendor.vendor_login');
    }


    public function VendorDestroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/vendor/login');
    }//end method


    public function VendorProfile()
{
    $id = Auth::user()->id;
    $vendorData = User::find($id);
    return view('vendor.vendor_profile_view',compact('vendorData'));

}//end method


public function VendorProfileStore(Request $request)
{
    $id = Auth::user()->id;
    $data = User::find($id);
    $data->name = $request->name;
    $data->email = $request->email;
    $data->phone = $request->phone;
    $data->address = $request->address;
    $data->vendor_join = $request->vendor_join;
    $data->vendor_short_info = $request->vendor_short_info;

    if ($request->file('photo')) {
        $file = $request->file('photo');
        @unlink(public_path('upload/vendor_images/'.$data->photo));
        $filename = date('YmdHi').$file->getClientOriginalName();
        $file->move(public_path('upload/vendor_images'),$filename);
        $data['photo'] = $filename;
    }
    $data-> save();
       $notification = array(
        'message' => 'Vendor Profile Updated Successfully',
        'alert-type' => 'success'

       ); 
     return redirect()->back()->with($notification);
    
}//end method
public function VendorChangePassword( )
{
    return view('vendor.vendor_change_password');
}//end method


public function VendorUpdatePassword(Request $request)
{
    $request->validate([
      'old_password' => 'required',
      'new_password' => 'required|confirmed',
    ]);
    if (!Hash::check($request->old_password,auth::user()->password)) {
        return back()->with("error","Old Password Doesn't Mach!!");
    }     

    User::whereId(auth()->user()->id)->update([
       'password' => Hash::make($request->new_password)

    ]);
    return back()->with("status","password changed successfully");

}//end method



}

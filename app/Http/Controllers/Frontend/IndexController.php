<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\MultiImg;
use App\Models\Product;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function Index() {
        // Get categories to skip and their corresponding products
        $skip_categories = Category::skip([0, 2, 7])->take(3)->get();
        $skip_products = Product::where('status', 1)
            ->whereIn('category_id', $skip_categories->pluck('id'))
            ->orderBy('id', 'DESC')
            ->take(5)
            ->get();
    
        // Get other products to display
       
    
        return view('frontend.index', compact(
            'skip_categories', 'skip_products',
              
        ));
    }
    


    public function ProductDetails($id,$slug){
        $product = Product::findOrFail($id);

        $color = $product->product_color;
        $product_color = explode(',', $color);

        $size = $product->product_size;
        $product_size = explode(',', $size);

        $multiImg = MultiImg::where('product_id',$id)->get();

        // $cat_id = $product->category_id;
        // $relatedProduct = Product::where('category_id',$cat_id)->where('id','!=',$id)->orderBy('id','DESC')->limit(4)->get();
        $relatedProduct = Product::where('id','!=',$id)->orderBy('id','DESC')->limit(4)->get();
        return view('frontend.product.product_details',compact('product','product_color','product_size','multiImg','relatedProduct'));
    }

    public function CatWiseProduct(Request $request, $id, $slug) {
        $products = Product::where('status',1)->where('category_id',$id)->orderBy('id','DESC')->get();
        $categories = Category::orderBy('category_name','ASC')->get();
        $breadcat = Category::where('id',$id)->first();
        $newProduct = Product::orderBy('id','DESC')->limit(3)->get();

        return view('frontend.product.category_view',compact('products','categories','breadcat','newProduct'));
    }

    public function ProductViewAjax($id) {
        $product = Product::with('category','Brand')->findOrFail($id);

        $color = $product->product_color;
        $product_color = explode(',', $color);

        $size = $product->product_size;
        $product_size = explode(',', $size);

        return response()->json(array(
            'product' => $product,
            'color' => $product_color,
            'size' => $product_size,
        ));

    }
}

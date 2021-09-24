<?php

namespace App\Http\Controllers\Resource;

use App\Advertisement;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Http\Controllers\Controller;
use Exception;


class AdvertisementResource extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('demo', ['only' => [ 'store', 'update', 'destroy']]);
        //$this->middleware('permission:advertisement-list', ['only' => ['index']]);
        //$this->middleware('permission:advertisement-create', ['only' => ['create','store']]);
        //$this->middleware('permission:advertisement-edit', ['only' => ['edit','update']]);
        //$this->middleware('permission:advertisement-delete', ['only' => ['destroy']]);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $advertisements = Advertisement::orderBy('created_at' , 'desc')->get();
        return view('admin.advertisement.index', compact('advertisements'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('admin.advertisement.create');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|max:255',
            'description' => 'required|max:255',
            'link' => 'required|max:255',
            'status' => 'required',
            'from_date' => 'required',
            'to_date' => 'required',
            'image' => 'mimes:jpeg,jpg,bmp,png|max:5242880',

        ]);

        try{

            $advertisement = $request->all();

            if($request->hasFile('image')) {
                $advertisement['image'] = $request->image->store('advertisement');
            }
            $advertisement = Advertisement::create($advertisement);

            return back()->with('flash_success', trans('admin.record_upated'));

        } 

        catch (Exception $e) {
            return back()->with('flash_error', trans('admin.something_wrong'));
        }
    }

    /**
     * @param $id
     */
    public function show($id)
    {
        // 
    }

    /**
     * @param $id
     * @return Exception|\Illuminate\Contracts\View\Factory|ModelNotFoundException|\Illuminate\View\View
     */
    public function edit($id)
    {
        try {
            $advertisement = Advertisement::findOrFail($id);
            return view('admin.advertisement.edit',compact('advertisement'));
        } catch (ModelNotFoundException $e) {
            return $e;
        }
    }

    /**
     * @param Request $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request, $id)
    {
        
        $this->validate($request, [
            'title' => 'required|max:255',
            'description' => 'required|max:255',
            'link' => 'required|max:255',
            'status' => 'required',
            'from_date' => 'required',
            'to_date' => 'required',
            'image' => 'mimes:jpeg,jpg,bmp,png|max:5242880',
        ]);

        try {

            $advertisement = Advertisement::findOrFail($id);

            if($request->hasFile('image')) {
                \Storage::delete($advertisement->logo);
                $image = $request->image->store('advertisement');
            }

            $updAdv =   Advertisement::where('id',$id)->update([
                'title' => $request->title,
                'description' => $request->description,
                'link' => $request->link,
                'status' => $request->status,
                'image' =>  $image,
                'from_date' => $request->from_date,
                'to_date' => $request->to_date,
            ]);
            return redirect()->route('admin.advertisement.index')->with('flash_success', trans('admin.record_updated'));
        } 

        catch (ModelNotFoundException $e) {
            return back()->with('flash_error', trans('admin.something_wrong'));
        }
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        
        try {

            Advertisement::find($id)->delete();
            return back()->with('message', trans('admin.record_deleted'));
        } 
        catch (Exception $e) {
            return back()->with('flash_error', trans('admin.something_wrong'));
        }
    }

}

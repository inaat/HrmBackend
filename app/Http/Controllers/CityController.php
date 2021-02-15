<?php

namespace App\Http\Controllers;
use App\Http\Resources\CityResource;
use App\Http\Requests\CityCreateRequest;
use Illuminate\Http\Request;
use App\City;
use App\Country;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class CityController extends Controller
{
    public function index()
    {
         \Gate::authorize('view', 'cities');
        $Cities= city::with(['country'])->get();
        return CityResource::collection($Cities);
    }

    public function show($id)
    {
        \Gate::authorize('view', 'cities');
        return new CityResource(City::find($id));
    }

    public function store( Request $request)
    {
        \Gate::authorize('edit', 'cities');
        
        if($request->is_capital)
        {
            
            $City = City::where([['country_id',$request->country_id],['is_capital',$request->is_capital ]])->first();
                
                if (empty($City))  {

                    $City= City::create($request->only('company_id','country_id','city_name_eng','city_name_arab','user_by','region','is_capital','ticket_value'));
                    return response($City, Response::HTTP_ACCEPTED);
                } 
                
                else {

                    return response()->json([
                    'success' => false,
                    'message' => "This Country Capital Already Present !"]);
                    
                }
          
        }
       
        else
        {
               $City= City::create($request->only('company_id','country_id','city_name_eng','city_name_arab','user_by','region','is_capital','ticket_value'));
            return response($City, Response::HTTP_ACCEPTED); 
        }
       
      
    }

 /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries=Country::countrydropdown();
         return response($countries, Response::HTTP_ACCEPTED);
    }
    public function update(Request $request, $id)
    {
        \Gate::authorize('edit', 'cities');

        $City = City::find($id);
        $City->update($request->only('country_id','city_name_eng','city_name_arab','user_by','region','is_capital','ticket_value'));
        
        return response($City, Response::HTTP_ACCEPTED);
    }

    public function destroy($id)
    {
        \Gate::authorize('delete', 'cities');

        $City=City::destroy($id);

        return response($City, Response::HTTP_ACCEPTED);
    }
}

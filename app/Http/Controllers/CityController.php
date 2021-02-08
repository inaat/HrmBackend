<?php

namespace App\Http\Controllers;
use App\Http\Resources\CityResource;
use App\Http\Requests\CityCreateRequest;
use Illuminate\Http\Request;
use App\City;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class CityController extends Controller
{
    public function index()
    {
        $Cities= city::get();
        return CityResource::collection($Cities);
    }

    public function show($id)
    {
        return new CityResource(City::find($id));
    }

    public function store( Request $request)
    {
        // \Gate::authorize('edit', 'country');
        $City= City::create($request->only('country_id','city_name_eng','city_name_arab','user_id','region','is_capital','ticket_value'));

        return response($City, Response::HTTP_CREATED);
    }

    public function update(Request $request, $id)
    {
        // \Gate::authorize('edit', 'country');

        $City = City::find($id);
        $City->update($request->only('country_id','city_name_eng','city_name_arab','user_id','region','is_capital','ticket_value'));

        return response($City, Response::HTTP_ACCEPTED);
    }

    public function destroy($id)
    {
        // \Gate::authorize('edit', 'country');

        $City=City::destroy($id);

        return response($City, Response::HTTP_ACCEPTED);
    }
}

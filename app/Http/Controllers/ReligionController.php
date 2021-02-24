<?php

namespace App\Http\Controllers;
use App\Http\Resources\ReligionResource;
use App\Http\Requests\ReligionCreateRequest;
use Illuminate\Http\Request;
use App\Religion;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;


class ReligionController extends Controller
{
    public function index()
    {
        \Gate::authorize('view', 'religions');
        $Religion= Religion::get();
        return ReligionResource::collection($Religion);
    }

    public function show($id)
    {
        \Gate::authorize('view', 'religions');
        return new ReligionResource(Religion::find($id));
    }

    public function store( Request $request)
    {
        \Gate::authorize('edit', 'religions');
          $input=$request->only('user_by','religion_name_eng','religion_name_arab');
        $input['user_by']=auth('api')->user()->id;
        $input['company_id']=1;

         $Religion= Religion::create($input);
        return response($Religion, Response::HTTP_CREATED);
    }

    public function update(Request $request, $id)
    {
        \Gate::authorize('edit', 'religions');

        $Religion = Religion::find($id);
        $Religion->update($request->only('user_by','religion_name_eng','religion_name_arab'));

        return response($Religion, Response::HTTP_ACCEPTED);
    }

    public function destroy($id)
    {
        \Gate::authorize('delete', 'religions');

        $Religion=Religion::destroy($id);

        return response($Religion, Response::HTTP_ACCEPTED);
    }
}

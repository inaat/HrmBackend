<?php

namespace App\Http\Controllers;
use App\Http\Requests\CountryCreateRequest;
use App\Http\Resources\CountryResource;
use App\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class CountryController extends Controller
{
    /**
     * @OA\Get(path="/Country",
     *   security={{"bearerAuth":{}}},
     *   tags={"Country"},
     *   @OA\Response(response="200",
     *     description="Country Collection",
     *   )
     * )
     */
    public function index()
    {
        \Gate::authorize('view', 'Country');

        $Countries= Country::with(['countrycities'])->get();

        return CountryResource::collection($Countries);
    }

    /**
     * @OA\Get(path="/Country/{id}",
     *   security={{"bearerAuth":{}}},
     *   tags={"Country"},
     *   @OA\Response(response="200",
     *     description="User",
     *   ),
     *   @OA\Parameter(
     *     name="id",
     *     description="Country ID",
     *     in="path",
     *     required=true,
     *     @OA\Schema(
     *        type="integer"
     *     )
     *   )
     * )
     */
    public function show($id)
    {
        // \Gate::authorize('view', 'country');

        return new CountryResource(Country::find($id));
    }

    /**
     * @OA\Post(
     *   path="/country",
     *   security={{"bearerAuth":{}}},
     *   tags={"country"},
     *   @OA\Response(response="201",
     *     description="Country Create",
     *   )
     * )
     */
    public function store( CountryCreateRequest $request)
    {
        // \Gate::authorize('edit', 'country');
        $Country = Country::create($request->only('country_name_arab','nationality_arab','country_name_eng','nationality_eng'));

        return response($Country, Response::HTTP_CREATED);
    }

    /**
     * @OA\Put(
     *   path="/country/{id}",
     *   security={{"bearerAuth":{}}},
     *   tags={"country"},
     *   @OA\Response(response="202",
     *     description="Country Update",
     *   ),
     *   @OA\Parameter(
     *     name="id",
     *     description="Country ID",
     *     in="path",
     *     required=true,
     *     @OA\Schema(
     *        type="integer"
     *     )
     *   )
     * )
     */
    public function update(Request $request, $id)
    {
        // \Gate::authorize('edit', 'country');

        $Country = Country::find($id);
        $Country->update($request->only('country_name_arab', 'nationality_arab', 'country_name_eng','nationality_eng'
));

        return response($Country, Response::HTTP_ACCEPTED);
    }

    /**
     * @OA\Delete(path="/country/{id}",
     *   security={{"bearerAuth":{}}},
     *   tags={"country"},
     *   @OA\Response(response="204",
     *     description="Country Delete",
     *   ),
     *   @OA\Parameter(
     *     name="id",
     *     description="Country ID",
     *     in="path",
     *     required=true,
     *     @OA\Schema(
     *        type="integer"
     *     )
     *   )
     * )
     */
    public function destroy($id)
    {
        // \Gate::authorize('edit', 'country');

        $country=Country::destroy($id);

        return response($country, Response::HTTP_ACCEPTED);
    }
}

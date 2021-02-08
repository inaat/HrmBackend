<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Beneficiany_TypeResource;
use App\Http\Requests\Beneficiany_TypeCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\BeneficianyType;


class BeneficianyTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Beneficiany= BeneficianyType::get();
        return Beneficiany_TypeResource::collection($Beneficiany);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Beneficiany= BeneficianyType::create($request->only('user_by','beneficiany_desc_eng','beneficiany_desc_arab'));

        return response($Beneficiany, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return new Beneficiany_TypeResource(BeneficianyType::find($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Beneficiany = BeneficianyType::find($id);
        $Beneficiany->update($request->only('user_by','beneficiany_desc_eng','beneficiany_desc_eng'));

        return response($Beneficiany, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Beneficiany=BeneficianyType::destroy($id);

        return response($Beneficiany, Response::HTTP_ACCEPTED);
    }
}

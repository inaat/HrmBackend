<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Beneficiary_TypeResource;
use App\Http\Requests\Beneficiary_TypeCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\BeneficiaryType;


class BeneficiaryTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'beneficiary_types');
        $Beneficiary= BeneficiaryType::get();
        return Beneficiary_TypeResource::collection($Beneficiary);
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
        \Gate::authorize('edit', 'beneficiary_types');
        $input=$request->only('beneficiary_desc_eng','beneficiary_desc_arab');
        $input['user_by']=auth('api')->user()->id;
        $input['branch_id']=1;
        $input['company_id']=1;
        $Beneficiary= BeneficiaryType::create($input);

        return response($Beneficiary, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'beneficiary_types');
        return new Beneficiary_TypeResource(BeneficiaryType::find($id));
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
        \Gate::authorize('edit', 'beneficiary_types');
        $Beneficiary = BeneficiaryType::find($id);
        $Beneficiary->update($request->only('beneficiary_desc_eng','beneficiary_desc_arab'));

        return response($Beneficiary, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'beneficiary_types');
        $Beneficiary=BeneficiaryType::destroy($id);

        return response($Beneficiary, Response::HTTP_ACCEPTED);
    }
}

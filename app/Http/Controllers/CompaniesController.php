<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\CompaniesCreateRequest;
use App\Company;
use App\Http\Resources\CompaniesResource;
class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'companies');
        $Company = Company::get();
        return CompaniesResource::collection($Company);
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
        \Gate::authorize('edit', 'companies');
        $Company = Company::create($request->only('user_by','company_name_eng','company_name_arab','company_name_reg_eng','company_name_reg_arab','incorporation_date','incoporation_date_hijri','type_of_business_eng','type_of_business_arab','no_br'));

        return response($Company, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'companies');
        return new CompaniesResource(Company::find($id));
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
        //('user_by','company_name_eng','company_name_arab','company_name_reg_eng','company_name_reg_arab','incorporation_date','incoporation_date_hijri','type_of_business_eng','type_of_business_arab','no_br')
        \Gate::authorize('edit', 'companies');
        $Company= Company::find($id);
        $Company->update($request->only('user_by','company_name_eng','company_name_arab','company_name_reg_eng','company_name_reg_arab','incorporation_date','incoporation_date_hijri','type_of_business_eng','type_of_business_arab','no_br'));

        return response($Company, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'companies');
        $Company = Company::destroy($id);

        return response($Company, Response::HTTP_ACCEPTED);
    }
}

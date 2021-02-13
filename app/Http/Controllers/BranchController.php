<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\BranchResource;
use App\Http\Requests\BranchCreateRequest;
use App\Branch;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class BranchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'branches');
        $Branch = Branch::get();
        return BranchResource::collection($Branch);
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
        \Gate::authorize('edit', 'branches');
        $Branch= Branch::create($request->only('company_id','country_id','city_id','user_by','branch_name_eng','branch_name_arab','branch_manager_eng','branch_manager_arab','address_1','address_2','address_3','address_4','postal_code','state_region','phone_1','phone_2','phone_3','fax_1','fax_2','email','website','status','remarks_1','remarks_2','remarks_3','default_emp'));

        return response($Branch, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'branches');
        return new BranchResource(Branch::find($id));
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
        \Gate::authorize('edit', 'branches');

        $Branch = Branch::find($id);
        $Branch->update($request->only('company_id','country_id','city_id','user_by','branch_name_eng','branch_name_arab','branch_manager_eng','branch_manager_arab','address_1','address_2','address_3','address_4','postal_code','state_region','phone_1','phone_2','phone_3','fax_1','fax_2','email','website','status','remarks_1','remarks_2','remarks_3','default_emp'));

        return response($Branch, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {\Gate::authorize('delete', 'branches');

        $Branch = Branch::destroy($id);

        return response($Branch, Response::HTTP_ACCEPTED);
    }
}

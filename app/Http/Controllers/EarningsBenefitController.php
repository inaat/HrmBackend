<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Earnings_BenefitResource ;
use App\Http\Requests\Earning_BenefitCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use App\EarningsBenefit;

class EarningsBenefitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'earning_benefits');
        $Earn= EarningsBenefit::get();
        return Earnings_BenefitResource ::collection($Earn);
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
        \Gate::authorize('edit', 'earning_benefits');
         $input=$request->only('benefit_desc_eng','benefit_desc_arab','final_set_flag','money_value_flag','holiday_flag','printable','parentbenefit','modify_flag','gl_id','credit_gl_id','show_in_report','mulfactor','parcent_frsalary','mb' );
        $input['user_by']=auth('api')->user()->id;
        $input['branch_id']=1;
        $input['company_id']=1;
        $Earn= EarningsBenefit::create($input);

        return response($Earn, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'earning_benefits');
        return new Earnings_BenefitResource(EarningsBenefit::find($id));
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
        \Gate::authorize('edit', 'earning_benefits');
        $Earn= EarningsBenefit::find($id);
        $Earn->update($request->only('user_by','benefit_desc_eng','benefit_desc_arab','final_set_flag','money_value_flag','holiday_flag','printable','parentbenefit','modify_flag','gl_id','credit_gl_id','show_in_report','mulfactor','parcent_frsalary','mb' ));

        return response($Earn, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'earning_benefits');
        $Earn=EarningsBenefit::destroy($id);

        return response($Earn, Response::HTTP_ACCEPTED);
    }
}

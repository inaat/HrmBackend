<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('login', 'AuthController@login');
Route::post('register', 'AuthController@register');
Route::apiResource('products', 'ProductController');
Route::apiResource('city','CityController');
Route::apiResource('religion','ReligionController');
Route::apiResource('evaluation_competence','Evaluation_competenceController');
Route::apiResource('educationtrainingtype','Education_Training_TypeController');
Route::apiResource('documenttype','DocumentTypeController');
Route::apiResource('beneficianytype','BeneficianyTypeController');
Route::apiResource('leavevacationtype','LeaveVacationTypeController');
Route::apiResource('positiondesignation','PositionDesisgnationController');
Route::apiResource('sponsor','SponsorController');
Route::apiResource('earningbenefit','EarningsBenefitController');
Route::apiResource('deduction','DeductionController');
Route::apiResource('currency','CurrencyController');
Route::apiResource('section','SectionController');
Route::apiResource('percentage','PercentageController');
Route::apiResource('evaluationtype','EvaluationTypeController');
Route::apiResource('companyschedule','CompanyScheduleController');
Route::apiResource('gosisubscription','GosiSubscriptionController');



Route::group(['middleware' => 'auth:api'], function () {
    Route::get('chart', 'DashboardController@chart');
    Route::get('user', 'UserController@user');
    Route::put('users/info', 'UserController@updateInfo');
    Route::put('users/password', 'UserController@updatePassword');
    Route::post('upload', 'ImageController@upload');
    Route::get('export', 'OrderController@export');

    Route::apiResource('users', 'UserController');
    Route::apiResource('roles', 'RoleController');
   // Route::apiResource('products', 'ProductController');
    Route::apiResource('orders', 'OrderController')->only('index', 'show');
    Route::apiResource('permissions', 'PermissionController')->only('index');
    Route::apiResource('country', 'CountryController');

});


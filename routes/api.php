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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('register', 'App\Http\Controllers\AuthController@create_user');

    Route::post('login', 'App\Http\Controllers\AuthController@login');
    Route::post('logout', 'App\Http\Controllers\AuthController@logout');
    Route::post('refresh', 'App\Http\Controllers\AuthController@refresh');
    Route::post('me', 'App\Http\Controllers\AuthController@me');
    Route::post('updatepassword', 'App\Http\Controllers\AuthController@updatepassword');
    
    // send message from founder
    Route::post('sendmessage', 'App\Http\Controllers\finance@send_message');



/////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * 
     * START SECTION OF ACCOUNTANT
     */
    //Receive message from founder
    Route::post('showmessage', 'App\Http\Controllers\finance@show_message');
    //Display Single Message 
    Route::post('showmcustomessage', 'App\Http\Controllers\finance@showmcustomessage');
    //INSERT INCOME CUSTODY FROM ADMIN
    Route::post('insertincomecustody', 'App\Http\Controllers\finance@insert_income_custody');
    //Display INCOME CUSTODY FROM ADMIN
    Route::post('displayincomecustody', 'App\Http\Controllers\finance@display_income_custody');
    //INSERT SUPPLY FROM ADMIN OR ACCOUNTANT
    Route::post('insertsupply', 'App\Http\Controllers\finance@insert_supply');
    //DISPLAY SUPPLY FROM ADMIN OR ACCOUNTANT
    Route::post('displaysupply', 'App\Http\Controllers\finance@display_supply');
    //INSERT FACILITY FROM ADMIN OR ACCOUNTANT
    Route::post('insertfacility', 'App\Http\Controllers\finance@insert_facility');
    //DISPLAY SUPPLY FROM ADMIN OR ACCOUNTANT
    Route::post('displayfacility', 'App\Http\Controllers\finance@display_facility');
    //INSERT STATIC ASSETS FROM ADMIN OR ACCOUNTANT
    Route::post('insertstaticasset', 'App\Http\Controllers\finance@insert_static_assets');
    //DISPLAY STATIC ASSETS FROM ADMIN OR ACCOUNTANT
    Route::post('displaystaticassets', 'App\Http\Controllers\finance@display_static_assets');    
    // DISPLAY FINGERPRINTS FILE  TO ACCOUNTAT WITH LIMITED WHEN STATUS ==0
    Route::post('displayfingerprintfiles', 'App\Http\Controllers\finance@display_fingerprint_file_to_accountant');
    // UPDATE STATUS OF FINGERPRINTS FILES
    Route::post('updatefingerprintfiles', 'App\Http\Controllers\finance@update_fingerprint_file');


        /** 
         * 
         * END SECTION OF ACCOUNTANT
         * 
         * 
        */
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * 
 * 
 * *
 * STATRT SECTION OF HUMAN RESOURCES
 * *
 *  */

//INSERT FINGERPRINTS' FILES FROM ADMIN OR HR
Route::post('insertfingerprintfiles', 'App\Http\Controllers\hr@insert_fingerprint_file');
//DISPLAY FINGERPRINTS' FILES FROM ADMIN OR HR
Route::post('displayfingerprintfileshr', 'App\Http\Controllers\hr@display_fingerprint_file');


//INSERT EMPLOYEE DATA FROM HR
Route::post('insertemployee', 'App\Http\Controllers\hr@insert_employee_data');
//DISPLAY ALL EMPLOYEES DATA
Route::post('displayemployees', 'App\Http\Controllers\hr@display_employees');
//DISPLAY CUSTOM EMPLOYEE DATA      
Route::post('displaycustomemployees', 'App\Http\Controllers\hr@display_custom_employees');
//update EMPLOYEE DATA FROM HR Accept ID For Employee
Route::post('updateemployee', 'App\Http\Controllers\hr@update_employee_data');



/*****
 * 
 * 
 * 
 * START JOB OFFER 
 * 
 * 
 */

 //INSERT JOB OFFER 
Route::post('insertjoboffer', 'App\Http\Controllers\hr@insert_job_offer');

//UPDATE JOB OFFER DATA STATUS
Route::post('updatejobofferstatus', 'App\Http\Controllers\hr@update_joboffer_status');


/*****
 * 
 * 
 * 
 * PAYROL BEFORE EDIT OR CALCULATE
 * 
 * 
 */
// insert file csv
Route::post('insertdatafingerprint', 'App\Http\Controllers\hr@insertdata');
// return distinict users and name
Route::post('return_distinict_users', 'App\Http\Controllers\hr@return_distinict_users');

// SELECT USER WITH ONE ID AND CALCULATE RECORDS
// request with emp_id and month and year 
Route::post('calculate_salary', 'App\Http\Controllers\hr@calculate_salary');
// return Salary 
Route::post('Display_salary_after_calculate', 'App\Http\Controllers\hr@Display_salary_after_calculate');

// return all execuses 
Route::post('Display_all_execuses', 'App\Http\Controllers\hr@Display_all_execuses');


// addexecuse for employee 
Route::post('add_execuse_for_employee', 'App\Http\Controllers\hr@add_execuse_for_employee');


/**
 * 
 * 
 * INSERT CLIENTS CAMPGAIN FILES
 * 
 * 
 */


Route::post('insertclientsSheet', 'App\Http\Controllers\clients@insertclientsSheet');
//DISPLAY CLIENTS SHEEET
Route::post('DisplayclientsSheet', 'App\Http\Controllers\clients@DisplayclientsSheet');




Route::post('insertclientsprofile', 'App\Http\Controllers\clients@insertclientsprofile');
//DISPLAY CLIENTS PROFILE
Route::post('DisplayclientsProfile', 'App\Http\Controllers\clients@DisplayclientsProfile');

/**
 * 
 * 
 * INSERT ADS BILL FILES
 * 
 * 
 */


// Add or Insert And Display Ads Bills
Route::post('insert_ad', 'App\Http\Controllers\finance@insert_ad');


Route::post('display_ad', 'App\Http\Controllers\finance@display_ad');

/**
 * 
 * 
 * CVS FILES
 * 
 * 
 */

 Route::post('insert_cv', 'App\Http\Controllers\hr@insert_cv');


 Route::post('display_cv', 'App\Http\Controllers\hr@display_cv');


 Route::post('update_cv', 'App\Http\Controllers\hr@update_cv');

});    

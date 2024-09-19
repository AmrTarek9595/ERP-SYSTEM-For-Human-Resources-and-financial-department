<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client_sheet;
use Validator;
use App\Models\client;

class clients extends Controller
{

    protected $type;
    protected $who_upload;
    /**
     * 
     * 
     * Constructor
     * 
     * 
     */
    public function __construct()
    {
       $this->middleware('auth:api');
       $this->type=auth()->user()->type;
       $this->who_upload=auth()->user()->id;
       

    }


    /**
     * 
     * 
     * 
     * Insert Clients Sheets from campgain
     */

     public function insertclientsSheet(Request $req){
        $v = Validator::make($req->all(),[
            'from_date'=>'required',
            
            'to_date' => 'required',
            'description'=>'required',

            'file_name'=>'required'

   

            //'password' => 'required|min:7|confirmed'
        ]);
        if ($v->fails())
        {
            return response()->json(["message"=>$v->errors(),"status"=>"false"],401);
           
          
        }
    
        try{
         
            if($this->type==1){
                $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/clients_sheet'), $imageName);

                client_sheet::create([
                 
                    'from_date'=>$req->from_date,
                    'to_date'=>$req->to_date,
                    'description'=>$req->description,
                    'file_name'=>$imageName]);

                return response()->json(["message"=>"Added Successfully","status"=>'true'],200);
            }
            else{
                return response()->json(["message"=>"you aren't admin"],401);

            }
        }
        catch(\Exception $e){

        }



     }

     public function DisplayclientsSheet(Request $req){
     
        try{
         
            if($this->type==1){
             
                $data=client_sheet::get();
                
                    if(count($data) >=1 )
                    {
                        return response()->json(["message"=>$data,"status"=>'true'],200);
                    }
                    else{
                        return response()->json(["message"=>$data,"status"=>'false'],200);
                    }
                
            }
            else{
                return response()->json(["message"=>"you aren't admin"],401);

            }
        }
        catch(\Exception $e){

        }



     } 


         /**
     * 
     * 
     * 
     * Insert Clients Sheets from campgain
     */

     public function insertclientsprofile(Request $req){
        $v = Validator::make($req->all(),[
            'name'=>'required',
            
            'service' => 'required',
            'contact_number'=>'required',
            'start_contract'=>'required',
            'time_frame'=>'required|integer',

            'price_residual'=>'required',

            'price_paid'=>'required'

            //'password' => 'required|min:7|confirmed'
        ]);
        if ($v->fails())
        {
            return response()->json(["message"=>$v->errors(),"status"=>"false"],401);
           
          
        }
    
        try{
         
            if($this->type==1){
             
                client::create([
                 
                    'name'=>$req->name,
                    'service'=>$req->service,
                    'contact_number'=>$req->contact_number,
                    'start_contract'=>$req->start_contract,
                    'time_frame'=>$req->time_frame,
                    'price_residual'=>$req->price_residual,
                    'price_paid'=>$req->price_paid,
                    
                
                
                ]);

                return response()->json(["message"=>"Added Successfully","status"=>'true'],200);
            }
            else{
                return response()->json(["message"=>"you aren't admin"],401);

            }
        }
        catch(\Exception $e){

        }



     }
     public function DisplayclientsProfile(Request $req){
     
        try{
         
            if($this->type==1){
             
                $data=client::orderBy("id","desc")->get();
                


                if(count($data) >=1)
                {
                    return response()->json(["message"=>$data,"status"=>'true'],200);
                }
                else{
                    return response()->json(["message"=>$data,"status"=>'false'],200);
                }
           
            }
            else{
                return response()->json(["message"=>"you aren't admin"],401);

            }
        }
        catch(\Exception $e){

        }



     } 
}

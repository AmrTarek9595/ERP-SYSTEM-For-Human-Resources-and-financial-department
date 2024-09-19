<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\message;
use App\Models\income_custody;
use App\Models\supply;
use App\Models\facility;
use App\Models\statice;
use App\Models\ad;
use App\Models\figerprint;
use Validator;
class finance extends Controller
{
    protected $user;
    protected $type;
    
   protected  $who_upload;
    // $type=auth()->user()->type;
    public function __construct()
    {
       $this->middleware('auth:api');
       $this->type=auth()->user()->type;
       $this->who_upload=auth()->user()->id;
       

    }
  

       /***
        * 
        * Send Message From Founder To Departments
        * ** 
        * 
        * */
  
    public function send_message(Request $req)
    {
        $v = Validator::make($req->all(),[
            'to'=>'required',
            
            'subject' => 'required',
            'message'=>'required'

            //'password' => 'required|min:7|confirmed'
        ]);
        if ($v->fails())
        {
            return response()->json(["message"=>$v->errors(),"status"=>"false"],401);
           
          
        }
        if($this->type==1){
            if($req->to==4)
            {
                
                for ($i=2; $i <4 ; $i++) { 
                    message::create(['from'=>1,'to'=>$i,'subject'=>$req->subject,'message'=>$req->message]);
          
                }
                return response()->json(["message"=>'Deliverd Succesfull','status'=>'true'],200);
            
        }
        else if($req->to==2 || $req->to==3) {
            message::create($req->all());
            return response()->json(["message"=>'Deliverd Succesfull','status'=>'true'],200);
        }

           
        }
        try{
         
     
            
            }
        catch(\Exception $e){
                return response()->json(["message"=>$e->getMessage(),"status"=>"false"],401);
            }
    }
    
        /***
         * 
         * DISPLAY MESSAGE TO DEPARTMENT
         * ** 
         * 
         * */
    public function show_message(Request $req)
    {
        
        if($this->type==1)
        {
            try
            {
                $data=message::orderBy('id', 'DESC')->get();
                if(count($data)>=1)
                {
                       return response()->json(["message"=>$data,"status"=>"true"],200);
                }
                else{
                return response()->json(["message"=>$data,"status"=>"false"],200);
            }
            }
            catch(\Exception $e){
                    return response()->json(["message"=>"Faild to Load Data","status"=>"false"],401);
            }
        }
        else{
            try
            {
                $data=message::where("to",'=',$this->type)->orderBy('id', 'DESC')->get();
                if(count($data)>=1)
                {
                    return response()->json(["message"=>$data,"status"=>"true"],200);
                }
                else{
                    return response()->json(["message"=>$data,"status"=>"false"],200);
                }
              
            }
            catch(\Exception $e){
                    return response()->json(["message"=>"Faild to Load Data","status"=>"false"],401);
            }
        }
       
    }
           /*
           *
           * 
           * Return Cstom Message 
           * *
            * 
            */
     public function showmcustomessage(Request $req)
    {
        
     
            try
            {
                $data=message::where('id', $req->id)->get();
                return response()->json(["message"=>$data,"status"=>"true"],200);
            }
            catch(\Exception $e){
                    return response()->json(["message"=>"Faild to Load Data","status"=>"false"],401);
            }
        
     
       
    }
    
        /***
         * 
         * INSERT INCOME CUSTODY
         * ** 
         * 
         * */


        public function insert_income_custody(Request $req)
        {
      
            
            if( $this->type==1)
            {
                $v = Validator::make($req->all(),[
                    'amount'=>'required',
                    'day' => 'required',
                    'month' => 'required',
                    'year'=>'required',
                    'file_name'=>'required|file|mimes:jpg,png,pdf|max:5120',
                    // 'who_upload'=>'required'
                   
                ]);
                if ($v->fails())
                {
                    return response()->json(["message"=>"Max Size is 5 MB","status"=>"false"],200);
                }
                    // end validation for insert Income Custody
                try
                {
                 
                    $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/income_custody'), $imageName);
                    income_custody::create([
                        'who_upload'=>$this->who_upload,
                        'amount'=>$req->amount,
                        'day'=>$req->day,
                        'month'=>$req->month,
                        'year'=>$req->year,
                        'file_name'=>$imageName,
                    ]);
                    return response()->json(["message"=>"Successful Added","status"=>"true"],200);
                }
  
                
                catch(\Exception $e){
                        return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                
                                    }
            }
            else{
                return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
            }
        
           
        }
                /***
         * 
         * Display INCOME CUSTODY
         * ** 
         * 
         * */

        public function display_income_custody(Request $req)
        {
           
            
            if( $this->type==1||$this->type==3)
            {
                try
                {
                 
                    
                    // $data=income_custody::orderBy('id', 'desc')->first();


                    // return response()->json(["message"=>$data,"status"=>"true"],200);

                    $Currentmonth=\Carbon\CarbonImmutable::now()->month; //detect current month
                    $data=income_custody::where('month',$Currentmonth)->select('amount')->get();//select data from incomecustody where current month
                    
                    $totalamountpermonth=0;

                    foreach($data as $row) { 
                        $totalamountpermonth+=$row['amount']; //calculate amount per month
                    }


                    $getdatafromsupplies=supply::where("month",$Currentmonth)->get();
                    $countofsupplies=count($getdatafromsupplies);

                    $getdatafromfacilities= facility::where("month",$Currentmonth)->get();
                    $countoffacilities=count($getdatafromfacilities);

                    $numberofInvoices=$countoffacilities+$countofsupplies;

                    $totalamountofsupplies=0;
                    foreach($getdatafromsupplies as $row) { 
                        $totalamountofsupplies+=$row['amount']; //calculate amount per month
                    }      
                    
                    
                    $totalamountoffacilites=0;
                    foreach($getdatafromfacilities as $row) { 
                        $totalamountoffacilites+=$row['amount']; //calculate amount per month
                    }
                   $totalamount=$totalamountoffacilites+$totalamountofsupplies;

                   $current=$totalamountpermonth-$totalamount;
                  $getalldatafromincomecustody=income_custody::orderBy('month', 'desc')->get();
                  
                  if(count($getalldatafromincomecustody)>=1)
                  {
                    $senddata=[
                        'all data' =>$getalldatafromincomecustody,
                        'invoices'=>$numberofInvoices,
                        'current'=>$current,
                        'total_amount_this_month'=>$totalamountpermonth
                       ];
                    return response()->json(["message"=>$senddata,'status'=>'true'],200);
                  }
                  else{
                    $senddata=[
                        'all data' =>$getalldatafromincomecustody,
                        'invoices'=>$numberofInvoices,
                        'current'=>$current,
                        'total_amount_this_month'=>$totalamountpermonth
                       ];
                    return response()->json(["message"=>$senddata,'status'=>'false'],200);
                  }
     
                }
  
                
                catch(\Exception $e){
                        return response()->json(["message"=>"Faild to Load Data","status"=>"false"],401);
                
                                    }
            }
            else{
                return response()->json(["message"=>"You Aren't Admin or You Aren't Accountant","status"=>"true"],200);
            }
        
           
        }

                /***
         * 
         * INSERT SUPPLY 
         * ** 
         * 
         * */


         public function insert_supply(Request $req)
         {
            //  $type=auth()->user()->type;
            //   $type=$req->type;
             if( $this->type==1 || $this->type==3)
             {
                 $v = Validator::make($req->all(),[
                    // 'who_upload'=>'required',
                     'description' => 'required',
                     'day' => 'required',
                     'month'=>'required',
                     'year'=>'required',
                     'file_name'=>'required|file|mimes:jpg,png,pdf|max:5120',
                     
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                     // end validation for insert supplies
          
             
                 try
                 {
                    $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/supplies'), $imageName);
                    supply::create([
                        'who_upload'=>$this->who_upload,
                        'description'=>$req->description,
                        'amount'=>$req->amount,
                        'day'=>$req->day,
                        'month'=>$req->month,
                        'year'=>$req->year,
                        'file_name'=>$imageName,
                    ]);
                    return response()->json(["message"=>"Successful Added","status"=>"true"],200);
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }


                            /***
             * 
             * DISPAY SUPPLY 
             * ** 
             * 
             * */


         public function display_supply(Request $req)
         {
          
           
             if( $this->type==1 || $this->type==3)
             {
             
               
                 try
                 {
                   
                    $data=supply::orderBy("id","desc")->get();
                    if(count($data)>=1){
                        return response()->json(["message"=>$data,"status"=>"true"],200);

                    }
                    else{
                        return response()->json(["message"=>$data,"status"=>"false"],200);

                    }
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }


                     /***
         * 
         * INSERT FACILITY 
         * ** 
         * 
         * */


         public function insert_facility(Request $req)
         {
            //  $type=auth()->user()->type;
              
             if( $this->type==1 || $this->type==3)
             {
                 $v = Validator::make($req->all(),[
                    //  'who_upload'=>'required',
                     'description' => 'required',
                     'day' => 'required',
                     'month'=>'required',
                     'year'=>'required',
                     'file_name'=>'required|file|mimes:jpg,png,pdf|max:5120',
                     'amount'=>'required'
                     
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                     // end validation for insert supplies
          
                 try
                 {
                    $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/facilities'), $imageName);
                    facility::create([
                        'who_upload'=>$this->who_upload,
                        'description'=>$req->description,
                        'day'=>$req->day,
                        'month'=>$req->month,
                        'year'=>$req->year,
                        'amount'=>$req->amount,
                        'file_name'=>$imageName,
                    ]);
                    return response()->json(["message"=>"Successful Added","status"=>"true"],200);
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }




        /***
         * 
         * DISPAY FACILITY 
         * ** 
         * 
         * */


         public function display_facility(Request $req)
         {
          
            
             if( $this->type==1 || $this->type==3)
             {
             
               
                 try
                 {
                   
                    $data=facility::orderBy('id','desc')->get();
                    if(count($data)>=1)
                    {
                    return response()->json(["message"=>$data,"status"=>"true"],200);
                }
                else{
                    return response()->json(["message"=>$data,"status"=>"false"],200);

                }
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }




                     /***
         * 
         * INSERT STATIC BRAND 
         * ** 
         * 
         * */


         public function insert_static_assets(Request $req)
         {
            //  $type=auth()->user()->type;
              
             if( $this->type==1 || $this->type==3)
             {
                 $v = Validator::make($req->all(),[
                    //  'who_upload'=>'required',
                     'serial_number' => 'required',
                     'type' => 'required',
                     'brand'=>'required',
                     'month'=>'required',          
                     'year' => 'required',
                     'cost'=>'required',
                    //  'notes'=>'required',
                    //  'file_name'=>'file|mimes:jpg,png,pdf|max:5120',
                     
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                     // end validation for insert supplies
          
                 try
                 {
                    if($req->file_name != null)
                    {
                    $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/static_assets'), $imageName);
                    statice::create([
                        'who_upload'=>$this->who_upload,
                        'serial_number'=>$req->serial_number,  
                        'type'=>$req->type,  
                        'brand'=>$req->brand,
                        'month'=>$req->month,
                        'year'=>$req->year,  
                        'cost'=>$req->cost,
                        'notes'=>$req->notes,
                        'available'=>1,
                        'file_name'=>$imageName,
                    ]);
                    return response()->json(["message"=>"Successful Added","status"=>"true"],200);
                }
                else{
                    statice::create([
                        'who_upload'=>$this->who_upload,
                        'serial_number'=>$req->serial_number,  
                        'type'=>$req->type,  
                        'brand'=>$req->brand,
                        'month'=>$req->month,
                        'year'=>$req->year,  
                        'cost'=>$req->cost,
                        'notes'=>$req->notes,
                        'available'=>0
                     
                    ]);
                    return response()->json(["message"=>"Successful Added","status"=>"true"],200);
                }
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }




        /***
         * 
         * DISPAY STATIC 
         * ** 
         * 
         * */


         public function display_static_assets(Request $req)
         {
          
            
             if( $this->type==1 || $this->type==3)
             {
             
               
                 try
                 {
                   
                    $data=statice::distinct('type')->pluck('type');
                    $getavailabledata=[];
                    $data1=[];
                    for ($i=0; $i < count($data); $i++) { 
                        $getavailabledata[$i]=statice::where("type",$data[$i])->count();
                        $data1[$i]=$data[$i].' : '.$getavailabledata[$i];   
                    }

                    $getnotavailabledata=[];
                    $data2=[];

                    for ($i=0; $i < count($data); $i++) { 
                        $getnotavailabledata[$i]=statice::where("type",$data[$i])->where('available',0)->count();
                        $data2[$i]=$data[$i].' : '.$getnotavailabledata[$i];
                    }
                    $dataArray=[];



                    for ($i=0; $i < count($data); $i++) { 
                        $dataArray[$i]=[

                            'name'=>$data[$i],
                            'available'=>$getnotavailabledata[$i],
                            'total'=>$getavailabledata[$i]

                        ];
                    }


                    $data4=statice::get();
                    return response()->json(["devices"=>$dataArray,"message"=>$data4,"status"=>"true"],200);
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Catch Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }





        /***
         * 
         * DISPAY FINGER PRINTS TO ACCOUNTANT  WITH LIMITED WHEN STATUS == 0
         * ** 
         * 
         * */


         public function display_fingerprint_file_to_accountant(Request $req)
         {
          
            
        
             
               
                 try
                 {
                   
                    $data=figerprint::get();
                    if(count($data)>=1)
                    {
                        return response()->json(["message"=>$data,"status"=>"true"],200);

                    }
                    else
                    {
                        return response()->json(["message"=>$data,"status"=>"false"],200);
                    }
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
   
         
            
         }


        /***
         * 
         * UPDATE STATUS OF FINGERPRINT FILES
         * ** 
         * 
         * */


         public function update_fingerprint_file(Request $req)
         {
          
            
             if( $this->type==1 || $this->type==3)
             {
             
               
                 try
                 {
                   
                    figerprint::where("id",$req->id)->update(["status"=>1]);
                    return response()->json(["message"=>"Update Successful","status"=>"true"],200);
                    
                 }
   
                 
                 catch(\Exception $e){
                         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                                     }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }

         public function insert_ad(Request $req){




            if( $this->type==1 || $this->type==3)
            {
               $v = Validator::make($req->all(),[
                   
                    'file_name'=>'required|file|mimes:pdf|max:5120',
                     
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
               
                try
                {
                    $imageName=time().'.'.$req->file_name->extension();
                    $req->file_name->move(public_path('/ads'), $imageName);
                   ad::create([
                    'who_upload'=>$this->who_upload,
                    'file_name'=>$imageName    
                ]);
                   return response()->json(["message"=>"Successfull Uploaded","status"=>"true"],200);
                   
                }
  
                
                catch(\Exception $e){
                        return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                
                                    }
            }
            else{
                return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
            }
         }

         public function display_ad(Request $req){




            if( $this->type==1 || $this->type==3)
            {
               

                try
                {
                        $data=ad::get();
                        if(count($data)>=1)
                        {
                        return response()->json(["message"=>$data,"status"=>"true"],200);
                    }
                    else{
                        return response()->json(["message"=>$data,"status"=>"false"],200);
                    }
                }
  
                
                catch(\Exception $e){
                        return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                
                                    }
            }
            else{
                return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
            }
         }
        
        }

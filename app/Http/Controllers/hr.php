<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\figerprint;
use App\Models\employee;
use App\Models\job_offer;
use App\Models\payroll;
use App\Models\weekend;
use App\Models\payrolls_after_calculate;
use App\Models\cv;
use Carbon\Carbon;
use Validator;

class hr extends Controller
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
         * INSERT FINGERPRINT FILES
         * ** 
         * 
         * */


         public function insert_fingerprint_file(Request $req)
         {
       
             
             if( $this->type==1||$this->type==2)
             {
                 $v = Validator::make($req->all(),[
                    //  'who_upload'=>'required',
                    //  'status' => 'required',
                    'file_name'=>'required|file|mimes:pdf|max:5120',
                     'month' => 'required',
                     'year'=>'required',
                    
                   
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                     // end validation
             $imageName=time().'.'.$req->file_name->extension();
                    $imageType=$req->file_name->extension();
                    $req->file_name->move(public_path('/fingerprintsfile'), $imageName);
                    figerprint::create([
                        'who_upload'=>$this->who_upload,
                        'file_type'=>$imageType,
                        'status'=>0,
                        'month'=>$req->month,
                        'year'=>$req->year,
                        'file_name'=>$imageName,
                    ]);

                    return response()->json(["message"=>"Successfun Added","status"=>"true"],200);
                 try
                 {
                  
                    
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
         * DISPLAY FINGERPRINT FILES
         * ** 
         * 
         * */


         public function display_fingerprint_file(Request $req)
         {
       
             
             if( $this->type==1||$this->type==2)
             {
               
             
                 try
                 {
                  $data=figerprint::get();
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
                 * INSERT EMPLOYEE DATA
                 * ** 
                 * 
                 * */


         public function insert_employee_data(Request $req)
         {
       
             
             if( $this->type==1||$this->type==2)
             {
                 $v = Validator::make($req->all(),[
                    //  'who_upload'=>'required',
                    //  'status' => 'required',
                  
           
                     'status'=> 'required',
                     'name'=> 'required',
                     'phone_number'=> 'required',
                     'email'=> 'required',
                     'location'=> 'required',
                     'start_date'=> 'required',
        
                   
                     'start_job_title'=> 'required',
      
                     'requirements_paper'=>  'required|file|mimes:zip,rar',
                    //  'custody_paper'=> 'file|mimes:zip,rar,pdf|max:5120',
                    
                 ]);
                 if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                     // end validation
               

                  
                                        
                    
                //  try
                 
                //  {
                    if($req->custody_paper != null)
                    {
                                $imageName1=time().'.'.$req->requirements_paper->extension();

                                 $req->requirements_paper->move(public_path('hr/requirements_paper'), $imageName1);  



                                 $imageName2=time().'_custody.'.$req->custody_paper->extension();

                                $req->custody_paper->move(public_path('hr/custody_paper'), $imageName2);  

            
                                employee::create([
                                    'who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                    'name'=>$req->name,
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>0,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                    'requirements_paper'=>$imageName1,
                                    
                                    'custody_paper'=>$imageName2,
                                    
                                ]);

                                return response()->json(["message"=>"Successfun Added","status"=>"true"],200);
                    }
                    else
                    {
                        $imageName1=time().'.'.$req->requirements_paper->extension();

                        $req->requirements_paper->move(public_path('hr/requirements_paper'), $imageName1);  




                                employee::create([
                                    'who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                    'name'=>$req->name,
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>0,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                    'requirements_paper'=>$imageName1,
                                    
                        
                                    
                                ]);

                                return response()->json(["message"=>"Successfull Added","status"=>"true"],200);
                    }
                    
                //  }
   
                 
                //  catch(\Exception $e){
                //          return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                 
                //                      }
             }
             else{
                 return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
             }
         
            
         }        
         
         
         /***
                 * 
                 * DISPLAY ALL EMPLOYEE DATA
                 * ** 
                 * 
                 * */


         public function display_employees(Request $req)
         {
       
             
                        
            if( $this->type==1||$this->type==2)
            {
                 try
                 
                 {
                    $data=employee::where("status",0)->get();
                    $data2=employee::where("status",1)->get();
                    if(count($data)>=1 && count($data2)>=1)
                    {
                        $data3=[
                            'employee'=>$data,
                            'ex-employee'=>$data2
                        ];
    
                                    return response()->json(["message"=>$data3,"status"=>"true"],200);
                    }
                    else if(count($data)<1 || count($data2)<1)
                    {
                        $data3=[
                            'employee'=>$data,
                            'ex-employee'=>$data2
                        ];
    
                                    return response()->json(["message"=>$data3,"status"=>"true"],200);
                    }
                    else{
                        $data3=[
                            'employee'=>$data,
                            'ex-employee'=>$data2
                        ];
    
                                    return response()->json(["message"=>$data3,"status"=>"false"],200);
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
                 * DISPLAY CUSTOM EMPLYEE DATA
                 * ** 
                 * 
                 * */


        public function display_custom_employees(Request $req)
        {
    
            
            if( $this->type==1||$this->type==2)
            {
            
                
                                    
                
                try
                
                {
                
                            $data=employee::where('id',$req->id)->get();
                            return response()->json(["message"=>$data,"status"=>"true"] ,200);
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
                 * UPDATE EMPLYEE DATA
                 * ** 
                 * 
                 * */


        public function update_employee_data(Request $req)
        {
    
            
            if( $this->type==1||$this->type==2)
            {
                $v = Validator::make($req->all(),[
            
                     'requirements_paper'=>  'file|mimes:zip,rar',
                     'custody_paper' => 'file|mimes:zip,rar',
                    
                 ]);
                //  test case for coming status
                 
                if ($v->fails())
                {
                    return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                }
            
                // try
                
                // {
                if($req->requirements_paper != null && $req->custody_paper != null)
                    {
                    $imageName1=time().'.'.$req->requirements_paper->extension();

                    $req->requirements_paper->move(public_path('hr/requirements_paper'), $imageName1);    
                    
                    $imageName2=time().'_custody.'.$req->custody_paper->extension();

                    $req->custody_paper->move(public_path('hr/custody_paper'), $imageName2);

                   employee::where('id',$req->id)->update([
                'who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                   
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>$req->basic_salary,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                    'requirements_paper'=>$imageName1,
                                    'custody_paper'=>$imageName2
                
                ]);
                    return response()->json(["message"=>"Succesfull Updated","status"=>"true"] ,200);          
                    }
                    

                   else if($req->requirements_paper == null && $req->custody_paper != null)
                    {
                   
                    
                    $imageName2=time().'_custody.'.$req->custody_paper->extension();

                    $req->custody_paper->move(public_path('hr/custody_paper'), $imageName2);

                   employee::where('id',$req->id)->update([
                    'who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                    
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>$req->basic_salary,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                  
                                    'custody_paper'=>$imageName2
                   ]);
                    return response()->json(["message"=>"Succesfull Updated","status"=>"true"] ,200);          
                    }


                    else if($req->requirements_paper != null && $req->custody_paper == null)
                    {
                   

                        $imageName1=time().'.'.$req->requirements_paper->extension();

                        $req->requirements_paper->move(public_path('hr/requirements_paper'), $imageName1);    


                   employee::where('id',$req->id)->update(['who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                    'name'=>$req->name,
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>$req->basic_salary,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                    'requirements_paper'=>$imageName1,
                                    ]);
                    return response()->json(["message"=>"Succesfull Updated","status"=>"true"] ,200);          
                    }

                    else{
                        employee::where('id',$req->id)->update([
                            'who_upload'=>$this->who_upload,
                                    'status'=>$req->status,
                                    'name'=>$req->name,
                                    'phone_number'=>$req->phone_number,
                                    'email'=>$req->email,
                                    'location'=>$req->location,
                                    'start_date'=>$req->start_date,
                                    'end_date'=> $req->end_date,
                                    'basic_salary'=>$req->basic_salary,
                                    'start_job_title'=>$req->start_job_title,
                                    'end_job_title'=>$req->end_job_title,
                                    
                        ]);
                        return response()->json(["message"=>"Succesfull Updated","status"=>"true"] ,200);          
                    }
               
                // }

                
                // catch(\Exception $e){
                //         return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                
                //                     }
            }
            else{
                return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
            }
        
        
        }


  /***
                 * 
                 * INSERT JOB OFFERS
                 * ** 
                 * 
                 * */


                 public function insert_job_offer(Request $req)
                 {
               
                     
                     if( $this->type==1||$this->type==2)
                     {
                         $v = Validator::make($req->all(),[
                            //  'who_upload'=>'required',
                             'job_status' => 'required',
                          
                   
                             'name'=> 'required',
                             'sent_date'=> 'required',
                             'file_name'=>  'required|file|mimes:zip,rar,pdf|max:5120',
                            //  'custody_paper'=> 'file|mimes:zip,rar,pdf|max:5120',
                            
                         ]);
                         if ($v->fails())
                         {
                             return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                         }
                             // end validation
                       
        
                          
                            
                            
                         try
                         
                         {
                            $imageName1=time().'.'.$req->file_name->extension();

                            $req->file_name->move(public_path('hr/job_offers'), $imageName1);    

                            job_offer::create(array_merge($req->all(),['who_upload'=>$this->who_upload],['file_name'=>$imageName1]));
                             return response()->json(["message"=>"Successfully Added Record","status"=>"true"],200);
                            
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
                 * UPDATE JOB OFFERS STATUS
                 * ** 
                 * 
                 * */
                 public function update_joboffer_status(Request $req)
                 {
             
                     
                     if( $this->type==1||$this->type==2)
                     {
                         $v = Validator::make($req->all(),[
                     
                              'status'=>  'required',
                             
                          ]);
                         //  test case for coming status
                          
                            
                     
          
                         try
                         
                         {
                            job_offer::where('id',$req->id)->update(['job_status'=>$req->status]);   
                            return response()->json(["message"=>"Updated Successfully",'status'=>'true'],200); 
                           
                         }
         
                         
                         catch(\Exception $e){
                                 return response()->json(["message"=>"Faild to Insert Data","status"=>"false"],401);
                         
                                             }
                     }
                     else{
                         return response()->json(["message"=>"You Aren't Admin","status"=>"true"],200);
                     }
                 
                 
                 }




                 /**
                  * *
                  *Function To calculate fridayes and saturdays
                  */

        
                  public function fridayes($date){
                    $dateDay = \Carbon\Carbon::parse($date);//use your date to get month and year
                    $year = $dateDay->year;
                    $month = $dateDay->month;
                    $days = $dateDay->daysInMonth;
                    $fridayes=[];
                    $saturdays=[];
                    foreach (range(1, $days) as $day) {
                        $date = \Carbon\Carbon::createFromDate($year, $month, $day);
                        if ($date->isFridays()===true) {
                            $fridayes[]=($date->month.'/'.$date->day.'/'.$date->year);
                        
                        }
                        
                    }
                    foreach (range(1, $days) as $day) {
                        $date = \Carbon\Carbon::createFromDate($year, $month, $day);
                        if ($date->isSaturdays()===true) {
                            $saturdays[]=($date->month.'/'.$date->day.'/'.$date->year);
                        
                        }
                        
                    }

                    
                    $data=array_merge($fridayes,$saturdays);
                    $formattedArray = [];
       
                    foreach ($data as $key => $dateString) {
                      $formattedArray[$key] = Carbon::parse($dateString)->format('m/d/Y'); // Format as desired
                    
                    }
                        return $formattedArray;
                       
                }

       

                public function csvToArray($filename = '', $delimiter = ','){
    
                    if (!file_exists($filename) || !is_readable($filename))
                    return false;
            
                                $header = null;
                                $data = array();
                                if (($handle = fopen($filename, 'r')) !== false)
                                {
                                    while (($row = fgetcsv($handle, 1000, $delimiter)) !== false)
                                    {
                                        if (!$header)
                                            $header = $row;
                                        else
                                            $data[] = array_combine($header, $row);
                                    }
                                    fclose($handle);
                                }
                            
                                return $data;
                
                
                }
            // select File


            //     public function importCsv()
            //          {
            
            
            
            
            //         $file = public_path('finger.csv');
            
            //                 $customerArr = $this->csvToArray($file);
                        
            //                 for ($i = 0; $i < count($customerArr); $i ++)
            //                 {
            //                     $customerArr[$i];
            //                 } 
            //         // $total= $this->fridayes('05-07-2024');
                
            //         $date2=[];
            //         $year ;
            //         $month ;
            //         $day ;
                    
            //             foreach ($customerArr as $row) {
                       
            //                 $date2[] = $row['Date'];
                   
                      
            //               }

            //             //   get Month number  
            //               $getmonth=\Carbon\CarbonImmutable::parse($date2[0]);
                          
            //               $calculateweekends= $this->fridayes($getmonth);


            //               $workdayesandweekenddayes=array_merge(array_unique($date2),$calculateweekends);
                          
            //               $workdayesandweekenddayes;
            //                 // return $date2;
            //                 // $total= $this->fridayes('6/2/2024');
            //                 // return $total;
                  

               
                      
                
      

            // }
                

            public function insertdata(Request $req){
                if( $this->type==1||$this->type==2)
                     {

                $file = $req->file_name;
                    $date2=[];
                
   
                 
                                $customerArr = $this->csvToArray($file);


                                
                                $getmonth=\Carbon\CarbonImmutable::parse($customerArr[0]['Date']);
                                $calculateweekends= $this->fridayes($getmonth);
                                
                                if(count($customerArr)>1){
                 
                                for ($x=0; $x <count($calculateweekends) ; $x++) {
                                    if(weekend::where('daysoff',$calculateweekends[$x])->first()>1)
                                  {
                                    return response()->json(["message"=>"Date available before"]);
                                  }
                                  else{
                                    weekend::create(
                                        [
                                        'month'=>$getmonth->month,
                                        'year'=>$getmonth->year,
                                        'daysoff'=>$calculateweekends[$x]]);
                                   }
                                  } 
                 
      
                                }                                 
                                for ($i = 0; $i < count($customerArr); $i ++)
                                { 
                                        if( (strtotime($customerArr[$i]['Start time']) >= strtotime('9:30')) && (strtotime($customerArr[$i]['End time']) < strtotime('17:00')))
                                      {
                                        // FIRST CASE COME AFTER 9:30 AND LEAVE BEFORE 5
                                        $timstamp1_start[$i]=strtotime($customerArr[$i]['Start time']);
                                        $timstamp2_start[$i]=strtotime('9:30');

                                       
                                        $hours[$i]= floor(($timstamp1_start[$i]-$timstamp2_start[$i]) / 3600);
                                        $return_date[$i]=floor((($timstamp1_start[$i]-$timstamp2_start[$i]) % 3600) / 60);
                                        // delay time mins and hours start of day

                                        $timstamp1_end[$i]=strtotime($customerArr[$i]['End time']);
                                        $timstamp2_end[$i]=strtotime('17:00');

                                        $late_hours_end[$i]= floor(($timstamp2_end[$i]-$timstamp1_end[$i]) / 3600);
                                        $late_mins_end[$i]=floor((($timstamp2_end[$i]-$timstamp1_end[$i]) % 3600) / 60);
                                        // delay time mins and hours in end of day
                                        payroll::create([
                                            'who_upload'=>$this->who_upload,
                                            'emp_id'=>$customerArr[$i]['AC-No.'],
                                            'date'=>$customerArr[$i]['Date'],
                                            'month'=> $getmonth->month,
                                            'year'=> $getmonth->year,
                                            'start_time'=>$customerArr[$i]['Start time'],
                                            'start_end'=>$customerArr[$i]['End time'],
                                            // 'duration'=>$customerArr[$i]['Time long'],
                                            'emp_name'=>$customerArr[$i]['Name'],
                                            'absent_hours_start'=>$hours[$i],
                                            'delay_mins_start'=>$return_date[$i],
                                            'extra_time_mins'=>'0',
                                            'extra_time_hours'=>'0',
                                            'absent_hours_end'=>$late_hours_end[$i],
                                            'delay_mins_end'=>$late_mins_end[$i],
                                        ]);
         
                         
                                      }


                                        else if((strtotime($customerArr[$i]['Start time']) >= strtotime('9:30')) && (strtotime($customerArr[$i]['End time']) >= strtotime('17:30')))
                                        {
                                        // SECOND CASE COME AFTER 9:30 AND LEAVE AFTER 5:30
                                        $timstamp1_start[$i]=strtotime($customerArr[$i]['Start time']);
                                        $timstamp2_start[$i]=strtotime('9:30');

                                       
                                        $hours[$i]= floor(($timstamp1_start[$i]-$timstamp2_start[$i]) / 3600);
                                        $return_date[$i]=floor((($timstamp1_start[$i]-$timstamp2_start[$i]) % 3600) / 60);
                                        // delay time mins and hours


                                        $timstamp1_end[$i]=strtotime($customerArr[$i]['End time']);
                                        $timstamp2_end[$i]=strtotime('17:30');

                                        $extra_hours[$i]= floor(($timstamp1_end[$i]-$timstamp2_end[$i]) / 3600);
                                        $extra_mins[$i]=floor((($timstamp1_end[$i]-$timstamp2_end[$i]) % 3600) / 60);
                                        // delay time mins and hours in end of day

                                        payroll::create([
                                            'who_upload'=>$this->who_upload,
                                            'emp_id'=>$customerArr[$i]['AC-No.'],
                                            'date'=>$customerArr[$i]['Date'],
                                            'month'=> $getmonth->month,
                                            'year'=> $getmonth->year,
                                            'start_time'=>$customerArr[$i]['Start time'],
                                            'start_end'=>$customerArr[$i]['End time'],
                                            // 'duration'=>$customerArr[$i]['Time long'],
                                            'emp_name'=>$customerArr[$i]['Name'],
                                            'absent_hours_start'=>$hours[$i],
                                            'delay_mins_start'=>$return_date[$i],
                                            'extra_time_mins'=>$extra_mins[$i],
                                            'extra_time_hours'=>$extra_hours[$i],
                                            'absent_hours_end'=>'0',
                                            'delay_mins_end'=>'0',
                                        ]);

                                        }

                                        else if((strtotime($customerArr[$i]['Start time']) <= strtotime('9:30')) && (strtotime($customerArr[$i]['End time']) <= strtotime('17:00')))
                                        {
                                            // THIRD CASE COME AT 9:30 AND LEAVE BEFORE 5 PM

                                    
                                            $timstamp1_end[$i]=strtotime($customerArr[$i]['End time']);
                                            $timstamp2_end[$i]=strtotime('17:00');

                                            $hours_end[$i]= floor(($timstamp2_end[$i]-$timstamp1_end[$i]) / 3600);
                                            $return_date_end[$i]=floor((($timstamp2_end[$i]-$timstamp1_end[$i]) % 3600) / 60);
                                            // delay time mins and hours in end of day

                                            payroll::create([
                                                'who_upload'=>$this->who_upload,
                                                'emp_id'=>$customerArr[$i]['AC-No.'],
                                                'date'=>$customerArr[$i]['Date'],
                                                'month'=> $getmonth->month,
                                                'year'=> $getmonth->year,
                                                'start_time'=>$customerArr[$i]['Start time'],
                                                'start_end'=>$customerArr[$i]['End time'],
                                                // 'duration'=>$customerArr[$i]['Time long'],
                                                'emp_name'=>$customerArr[$i]['Name'],
                                                'absent_hours_start'=>'0',
                                                'delay_mins_start'=>'0',
                                                'extra_time_mins'=>'0',
                                                'extra_time_hours'=>'0',
                                                'absent_hours_end'=>$hours_end[$i],
                                                'delay_mins_end'=>$return_date_end[$i],
                                            ]);
                                        }

                                        else if((strtotime($customerArr[$i]['Start time']) <= strtotime('9:30')) && (strtotime($customerArr[$i]['End time']) >= strtotime('17:30')))
                                        {
                                            // fourth CASE COME AT 9:30 AND LEAVE BEFORE 5 PM

                                    
                                            $timstamp1_end[$i]=strtotime($customerArr[$i]['End time']);
                                            $timstamp2_end[$i]=strtotime('17:30');

                                            $hours_end[$i]= floor(($timstamp1_end[$i]-$timstamp2_end[$i]) / 3600);
                                            $return_date_end[$i]=floor((($timstamp1_end[$i]-$timstamp2_end[$i]) % 3600) / 60);
                                            // delay time mins and hours in end of day


                                            payroll::create([
                                                'who_upload'=>$this->who_upload,
                                                'emp_id'=>$customerArr[$i]['AC-No.'],
                                                'date'=>$customerArr[$i]['Date'],
                                                'month'=> $getmonth->month,
                                                'year'=> $getmonth->year,
                                                'start_time'=>$customerArr[$i]['Start time'],
                                                'start_end'=>$customerArr[$i]['End time'],
                                                // 'duration'=>$customerArr[$i]['Time long'],
                                                'emp_name'=>$customerArr[$i]['Name'],
                                                'absent_hours_start'=>'0',
                                                'delay_mins_start'=>'0',
                                                'extra_time_mins'=> $return_date_end[$i],
                                                'extra_time_hours'=>$hours_end[$i],
                                                'absent_hours_end'=>'0',
                                                'delay_mins_end'=>'0',
                                            ]);


                                        }

                                        else if((strtotime($customerArr[$i]['Start time']) === strtotime('9:30')) && (strtotime($customerArr[$i]['End time']) === strtotime('17:30')))
                                        {
                                            // fifth CASE COME AT 9:30 AND LEAVE BEFORE 5 PM



                                            payroll::create([
                                                'who_upload'=>$this->who_upload,
                                                'emp_id'=>$customerArr[$i]['AC-No.'],
                                                'date'=>$customerArr[$i]['Date'],
                                                'month'=> $getmonth->month,
                                                'year'=> $getmonth->year,
                                                'start_time'=>$customerArr[$i]['Start time'],
                                                'start_end'=>$customerArr[$i]['End time'],
                                                // 'duration'=>$customerArr[$i]['Time long'],
                                                'emp_name'=>$customerArr[$i]['Name'],
                                                'absent_hours_start'=>'0',
                                                'delay_mins_start'=>'0',
                                                'extra_time_mins'=>'0',
                                                'extra_time_hours'=> '0',
                                                'absent_hours_end'=>'0',
                                                'delay_mins_end'=>'0',
                                            ]);


                                        }
                                        else if((strtotime($customerArr[$i]['Start time']) >= strtotime('9:30')) && (strtotime($customerArr[$i]['End time'])>= strtotime('17:00')))
                                        {
                                            // sixth CASE COME AT 9:30 AND LEAVE BEFORE 5 PM
                                            $timstamp1_start[$i]=strtotime($customerArr[$i]['Start time']);
                                            $timstamp2_start[$i]=strtotime('9:30');

                                            $hours_start[$i]= floor(($timstamp1_start[$i]-$timstamp2_start[$i]) / 3600);
                                            $return_date_start[$i]=floor((($timstamp1_start[$i]-$timstamp2_start[$i]) % 3600) / 60);


                                            $timstamp1_end[$i]=strtotime($customerArr[$i]['End time']);
                                            $timstamp2_end[$i]=strtotime('17:30');

                                            $hours_end[$i]= floor(($timstamp2_end[$i]-$timstamp1_end[$i]) / 3600);
                                            $return_date_end[$i]=floor((($timstamp2_end[$i]-$timstamp1_end[$i]) % 3600) / 60);
                                            // delay time mins and hours in end of day

                                            payroll::create([
                                                'who_upload'=>$this->who_upload,
                                                'emp_id'=>$customerArr[$i]['AC-No.'],
                                                'date'=>$customerArr[$i]['Date'],
                                                'month'=> $getmonth->month,
                                                'year'=> $getmonth->year,
                                                'start_time'=>$customerArr[$i]['Start time'],
                                                'start_end'=>$customerArr[$i]['End time'],
                                                // 'duration'=>$customerArr[$i]['Time long'],
                                                'emp_name'=>$customerArr[$i]['Name'],
                                                'absent_hours_start'=>$hours_start[$i],
                                                'delay_mins_start'=>$return_date_start[$i],
                                                'extra_time_mins'=>'0',
                                                'extra_time_hours'=> '0',
                                                'absent_hours_end'=>'0',
                                                'delay_mins_end'=>'0',
                                            ]);


                                        }
                                        else{
                                            payroll::create([
                                                        'who_upload'=>$this->who_upload,
                                                        'emp_id'=>$customerArr[$i]['AC-No.'],
                                                        'date'=>$customerArr[$i]['Date'],
                                                        'month'=> $getmonth->month,
                                                        'year'=> $getmonth->year,
                                                        'start_time'=>$customerArr[$i]['Start time'],
                                                        'start_end'=>$customerArr[$i]['End time'],
                                                        // 'duration'=>$customerArr[$i]['Time long'],
                                                        'emp_name'=>$customerArr[$i]['Name'],
                                                        'absent_hours_start'=>'0',
                                                'delay_mins_start'=>'0',
                                                'extra_time_mins'=>'0',
                                                'extra_time_hours'=> '0',
                                                'absent_hours_end'=>'0',
                                                'delay_mins_end'=>'0',
                                                    
                                                    ]);
                                        }
                                    
                                    //CALCULATE INCOMING TIME 
                                    
                                  
                                    
                                }
                          
                           
                           return response()->json(["message"=>"Done Uploaded",'status'=>'true'],200);
                   
                    }
                    else{
                        return response()->json(["message"=>"you aren't admin",'status'=>'false'],200);
                    }
                          
            }
            

            
            // return_distinict_users
            public function return_distinict_users(){

                $data2=payroll::select('emp_id','emp_name')->distinct()->get();;

                return response()->json(["message"=>$data2],200);
            }




            public function calculate_salary(Request $req)
            {
                if( $this->type==1||$this->type==2)
                {

                    try{
                        $v = Validator::make($req->all(),[
                            'month'=>'required',
                            'year'=>'required',
                            // 'salary'=>  'required',
                            'emp_id'=>  'required',
                 
                            
                           
                        ]);
                        if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }
                        
                $month=$req->month;
                $year=$req->year;
                $salary=2000;
                $emp_id=$req->emp_id;
                        
                $getmonthfromparolltable=payroll::where('emp_id',$emp_id)->where('month',$month)->where('year',$year)->get();//to get specific month and year
                    $weekend=weekend::where('month',$month)->where('year',$year)->get();

                    // $getDistinictNameANDEmpId=payroll::select(['emp_id','emp_name'])->groupBy(['emp_name','emp_id'])->get();

                   

                    //   return worked fine
                    //   return $weekend;

                    $getalldata=payroll::where('emp_id',$emp_id)->where('month',$month)->where('year',$year)->get();
                
                    $noOfWorkDays=[];
                    $noOfDayesOff=[];
                    
                    foreach($getalldata as $data){
                        $noOfWorkDays[]=$data->date;
                    }
                    foreach($weekend as $data){
                        $noOfDayesOff[]=$data->daysoff;
                    }

                    $totaldayeswithoutabsent=array_merge($noOfWorkDays,$noOfDayesOff); //concat number of days in working and dayoff
                    $noofmonthdays=\Carbon\CarbonImmutable::parse('1-0'.$month.'-'.$year)->daysInMonth;//get number of days in month to subtarct from number of attendance and number of weekends
                    $absentdays = $noofmonthdays-count($totaldayeswithoutabsent); //subtract to get number of absent days 
                 
                    $totalabsentminsStart=0; 
                    $totalabsenthoursStart=0;
                    $totalExtratimeMins=0;
                    $totalExtratimeHours=0;

                    foreach($getmonthfromparolltable as $data){
                            $totalabsentminsStart+=$data['delay_mins_start'];  
                          
                            $totalabsentminsStart+=$data['delay_mins_end'];  
                    }  
                    foreach($getmonthfromparolltable as $data){
                            $totalabsenthoursStart+=$data['absent_hours_start']; 
                            $totalabsenthoursStart+=$data['absent_hours_end'];

                        
                    }
                    foreach($getmonthfromparolltable as $data){
                        $totalExtratimeMins+=$data['extra_time_mins']; 
                        $totalExtratimeHours+=$data['extra_time_hours']; 
                   
                        
                    
                }

                    //  return $totalmins; worked fine to get sumetion of delay mins and hours 

                    $calculateSalaryPerdays=$salary/$noofmonthdays;
                    $calculateSalaryPerhour=$calculateSalaryPerdays/8;
                    $calculateSalaryPermins=$calculateSalaryPerhour/60;
                    // return $calculateSalaryPermins; worked fine
                    $delaytime=(($calculateSalaryPermins*$totalabsentminsStart)+ ($calculateSalaryPerhour*$totalabsenthoursStart));
                    $extratime=abs(($calculateSalaryPerhour*$totalExtratimeHours)+($calculateSalaryPermins*$totalExtratimeMins));

                    $finalsalary=round(abs($salary-$delaytime));

                    $final2=round($finalsalary+$extratime);
                    


                    if(count(payrolls_after_calculate::where('employee_id',$emp_id)->where('year',$year)->where('month',$month)->get())>=1)
                    {
                                        return response()->json(["message"=>"this record calculated before"],200);
                    }
                    else{
                        payrolls_after_calculate::create([
                            'month'=>$month,
                            'year'=>$year,
                            'employee_id'=>$emp_id,
                            'employee_name'=>$getalldata[0]->emp_name,
                            'total_absent_hours'=>$totalabsenthoursStart,
                            'total_attend_dayes'=>count($getalldata),
                            'total_absent_mins'=>$totalabsentminsStart,
                            'total_absent_dayes'=>$absentdays,
                            'overtime_mins'=>$totalExtratimeMins,
                            'overtime_hours'=>$totalExtratimeHours,
                            'total_salary_after_overtime'=>$final2,
                            'salary'=>$salary,
                            'salary_before_overtime'=>$finalsalary,
                            'salary_after_execuse'=>0
                        ]);

                            $salary_array=[
                                'employee_name'=>$getalldata[0]->emp_name,
                                'delay_mins'=>$totalabsentminsStart,
                                'delay_hours'=>$totalabsenthoursStart,
                                'overtime_mins'=>$totalExtratimeMins,
                                'overtime_hours'=>$totalExtratimeHours,
                                'total_salary_before_overtime'=>$finalsalary,
                                'total_salary_after_overtime'=>$final2,
                                'month'=>$month,
                                'year'=>$year,
                            ];
                        }
                 

                    return response()->json(['message'=>$salary_array,'status'=>'true'],200);
                    
                            }
                            catch(\Exception $e)
                            {
                                return response()->json(["message"=>"Check Inputs",400],200);
                            }
                            
                            }
                            else{
                                return response()->json(["message"=>"You aren't Admin",400],200);
                            }
                                
                
                    
            }
            //display Salary 
            public function Display_salary_after_calculate(Request $req)
            {
                if( $this->type==1||$this->type==2)
                {// $getmonth=\Carbon\CarbonImmutable::now()->month;
                 $previousMonth = Carbon::now()->subMonth()->month;
                $pastMonthNumber = (int)$previousMonth; // Cast to integer to remove leading zero


    
                    
                    $currentYear = Carbon::now()->year;
                    $data=payrolls_after_calculate::distinct('employee_id')->pluck('employee_id');
                    $data2=[]; 
                   for ($i=0; $i <count($data) ; $i++) {
                
                    $data2[$i]=payrolls_after_calculate::where('month',$previousMonth)->where('year',$currentYear)->where('employee_id',$data[$i])->orderBy('id','desc')->first();
                    
                   } 
                   if($data2[0]==NULL)
                   {
                    
                     return response()->json(["message"=>$data2,"status"=>"false"],200);
                        
                   }
                   else{
                    
                   return response()->json(["message"=>$data2,"status"=>"true"],200);
                        
                   }

                
                }
                 

                            
                }
                                
                
                    
            


            public function add_execuse_for_employee(Request $req){

                if( $this->type==1||$this->type==2)
                {

              
                        $v = Validator::make($req->all(),[
                            'month'=>'required',
                            'year'=>'required',
             
                            'emp_id'=>  'required',
                            'execuse_image'=>  'required|file|mimes:jpg,png,pdf|max:5120',
                            'notes'=>'required',
                            'date'=>'required'
                            
                        ]);
                        if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }

                $noofmonthdays= \Carbon\CarbonImmutable::parse('1-0'.$req->month.'-'.$req->year)->daysInMonth;
                $calculateSalaryPerdays=$req->salary/$noofmonthdays;
                $calculateSalaryPerhour=$calculateSalaryPerdays/8;
                $calculateSalaryPermins=$calculateSalaryPerhour/60;

               
                    if(count(payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->where('salary_after_execuse',0)->where('execuse',NULL)->get())>=1)
                    {
                    if($req->notes==1) //add one execuse hour
                    {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterOvertime=$getlastsalary['total_salary_after_overtime'];

                        $getcounter=$getlastsalary[0]['update_counter'];
                        
                        $updatedSalarayAfterAddOneHour=$calculateSalaryPerhour+$getsalaryAfterOvertime;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);
                        payrolls_after_calculate::where('employee_id',$req->emp_id)->update([
                            
                            'execuse'=> "True",
                            
                        ]); 
                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneHour,
                            'execuse'=> "Execuse 1 hour date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
         
                      
                  
                       return response()->json(['message'=>"Updated Successfully"],200);
                      
                    }
                    else  if($req->notes==2) //add one day only
                    {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterOvertime=$getlastsalary['total_salary_after_overtime'];

                 
                        
                        $updatedSalarayAfterAddOneDay=$calculateSalaryPerdays+$getsalaryAfterOvertime;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);
                        payrolls_after_calculate::where('id',$getlastsalary['id'])->update([
                            
                            'execuse'=> "True",
                            
                        ]); 
                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneDay,
                            'execuse'=> " leave of absence with date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
         
                      
                  
                       return response()->json(['message'=>"Updated Successfully"],200);
                    }
                    else  if($req->notes==3) //add one day only double paid
                    {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterOvertime=$getlastsalary['total_salary_after_overtime'];

                 
                        
                        $updatedSalarayAfterAddOneDay=$calculateSalaryPerdays+$getsalaryAfterOvertime;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);
                        payrolls_after_calculate::where('id',$getlastsalary['id'])->update([
                            
                            'execuse'=> "True",
                            
                        ]); 
                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneDay,
                            'execuse'=> "Double Paid with Date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
         
                      
                  
                       return response()->json(['message'=>"Updated Successfully"],200);
                    }
                    else  if($req->notes==4) //add half hour
                    {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterOvertime=$getlastsalary['total_salary_after_overtime'];

                 
                        
                        $updatedSalarayAfterAddOneHalfHour=($calculateSalaryPermins*30)+$getsalaryAfterOvertime;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);
                        payrolls_after_calculate::where('id',$getlastsalary['id'])->update([
                            
                            'execuse'=> "True",
                            
                        ]); 
                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneHalfHour,
                            'execuse'=> "Double Paid with Date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
         
                      
                  
                       return response()->json(['message'=>"Updated Successfully"],200);
                    }
                    }
                    
                    else if(count(payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->where('salary_after_execuse','!=',0)->where('execuse','!=',NULL)->get())>=1)
                    {
                    if($req->notes==1)//add execuse 1 hour
                        {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterLastExecuse=$getlastsalary['salary_after_execuse'];

                     
                        
                        $updatedSalarayAfterAddOneHour=$calculateSalaryPerhour+$getsalaryAfterLastExecuse;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);

                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneHour,
                            'execuse'=> "Execuse 1 Hour with date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
                 
                  
                       return response()->json(['message'=>"Update Successfully"],200);
                      
                    }

                    else if($req->notes==2)//add execuse leave of absence with date
                        {
                        $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                        $getsalaryAfterLastExecuse=$getlastsalary['salary_after_execuse'];

                     
                        
                        $updatedSalarayAfterAddOneDay=$calculateSalaryPerdays+$getsalaryAfterLastExecuse;
                   
                        $imageName=time().'.'.$req->execuse_image->extension();
                        $req->execuse_image->move(public_path('/execuse'), $imageName);

                        payrolls_after_calculate::create([
                            'month'=>$req->month,
                            'year'=>$req->year,
                            'employee_id'=>$getlastsalary['employee_id'],
                            'employee_name'=>$getlastsalary['employee_name'],
                            'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                            'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                            'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                            'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                            'overtime_mins'=>$getlastsalary['overtime_mins'],
                            'overtime_hours'=>$getlastsalary['overtime_hours'],
                            'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                            'salary'=>$getlastsalary['salary'],
                            'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                            'salary_after_execuse'=>$updatedSalarayAfterAddOneDay,
                            'execuse'=> "leave of absence with date: ".$req->date,
                            "update_counter"=>1,
                            'file_name'=>$imageName
                        ]);
                 
                  
                       return response()->json(['message'=>"Update Successfully"],200);
                      
                    }

                    else if($req->notes==3)//add Double Paid with Date
                    {
                            $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                            $getsalaryAfterLastExecuse=$getlastsalary['salary_after_execuse'];

                        
                            
                            $updatedSalarayAfterAddOneDay=$calculateSalaryPerdays+$getsalaryAfterLastExecuse;
                    
                            $imageName=time().'.'.$req->execuse_image->extension();
                            $req->execuse_image->move(public_path('/execuse'), $imageName);

                            payrolls_after_calculate::create([
                                'month'=>$req->month,
                                'year'=>$req->year,
                                'employee_id'=>$getlastsalary['employee_id'],
                                'employee_name'=>$getlastsalary['employee_name'],
                                'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                                'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                                'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                                'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                                'overtime_mins'=>$getlastsalary['overtime_mins'],
                                'overtime_hours'=>$getlastsalary['overtime_hours'],
                                'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                                'salary'=>$getlastsalary['salary'],
                                'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                                'salary_after_execuse'=>$updatedSalarayAfterAddOneDay,
                                'execuse'=> "Double Paid with Date: ".$req->date,
                                "update_counter"=>1,
                                'file_name'=>$imageName
                            ]);
                    
                    
                            return response()->json(['message'=>"Update Successfully"],200);
                  
                    }
                    else if($req->notes==4)//add half Hour
                    {
                            $getlastsalary=payrolls_after_calculate::where("employee_id",$req->emp_id)->where('month',$req->month)->where('year',$req->year)->orderBy('id', 'desc')->first();
                            $getsalaryAfterLastExecuse=$getlastsalary['salary_after_execuse'];

                        
                            
                            $updatedSalarayAfterAddHalfHour=($calculateSalaryPermins*30)+$getsalaryAfterLastExecuse;
                    
                            $imageName=time().'.'.$req->execuse_image->extension();
                            $req->execuse_image->move(public_path('/execuse'), $imageName);

                            payrolls_after_calculate::create([
                                'month'=>$req->month,
                                'year'=>$req->year,
                                'employee_id'=>$getlastsalary['employee_id'],
                                'employee_name'=>$getlastsalary['employee_name'],
                                'total_absent_hours'=>$getlastsalary['total_absent_hours'],
                                'total_attend_dayes'=>$getlastsalary['total_attend_dayes'],
                                'total_absent_mins'=>$getlastsalary['total_absent_mins'],
                                'total_absent_dayes'=>$getlastsalary['total_absent_dayes'],
                                'overtime_mins'=>$getlastsalary['overtime_mins'],
                                'overtime_hours'=>$getlastsalary['overtime_hours'],
                                'total_salary_after_overtime'=>$getlastsalary['total_salary_after_overtime'],
                                'salary'=>$getlastsalary['salary'],
                                'salary_before_overtime'=>$getlastsalary['salary_before_overtime'],
                                'salary_after_execuse'=>$updatedSalarayAfterAddHalfHour,
                                'execuse'=> "Double Paid with Date: ".$req->date,
                                "update_counter"=>1,
                                'file_name'=>$imageName
                            ]);
                    
                    
                            return response()->json(['message'=>"Update Successfully",'status'=>'true'],200);
                  
                    }
                    }
                    else{
                        return response()->json(["message"=>"Not Valid Data",'status'=>'false']);
                    }

             
                    }

                  

             
            

            }   
            public function Display_all_execuses(Request $req)
            {

                if( $this->type==1||$this->type==2)
                {

              
                        $v = Validator::make($req->all(),[
                            'month'=>'required',
                            'year'=>'required',

                            
                        ]);
                        if ($v->fails())
                            {
                                return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                            }

                        try{
                          if(count(payrolls_after_calculate::where('month',$req->month)->where('year',$req->year)->where("file_name","!=",NULL)->orderBy('id','desc')->get())>=1)
                          {
                            $data=payrolls_after_calculate::where('month',$req->month)->where('year',$req->year)->where("file_name","!=",NULL )->orderBy('id','desc')->get();
                             return response()->json(["message"=>$data,"status"=>'true']);  
               
                          }
                          else{
                            return response()->json(["message"=>"Enter Valid Data","status"=>'false']);  
                          }
                         
               
                        }
                        catch(\Exception $e)
                        {
                            return response()->json(["message"=>"Not Valid Input Data","status"=>'false'],401);
                        }


   
                    }
                    else{
                        return response()->json(["message"=>"Not Valid Data",'status'=>'false']);
                    }

             
            }


// INSERT CVS FILES AND DISPLAY AND UPDATE
            public function insert_cv(Request $req){

                if( $this->type==1||$this->type==2)
                {

              
                        $v = Validator::make($req->all(),[
                    
                            'interview_date'=>'required',
             
                            'job_title'=>  'required',
                            'cv_file'=>  'required|file|mimes:pdf|max:5120',
                            'statu'=>'required',
                          
                            
                        ]);
                        if ($v->fails())
                 {
                     return response()->json(["message"=>$v->errors(),"status"=>"true"],200);
                 }

                
                 $file_name=time().'.'.$req->cv_file->extension();
                 $req->cv_file->move(public_path('/cvs'), $file_name);
                  
                cv::create([
                    
                    "job_title"=>$req->job_title,
                    "interview_date"=>$req->interview_date,
                    "status"=>$req->statu,
                    "cv_file"=>$file_name


                            ]);
                            return response()->json(["message"=>"added successfully"]);
             
            

                        }        
            }
   


// DISPLAY CVS FILES
            public function display_cv(Request $req){

                if( $this->type==1||$this->type==2)
                {

              
                       

                
                
                  
                $data=cv::orderBy("id",'desc')->get();
                            return response()->json(["message"=>$data]);
             
            

                  }        
        }

// UPDATE  CVS STATUS FILES
public function update_cv(Request $req){

    if( $this->type==1||$this->type==2)
    {

    cv::where("id",$req->id)->update([
        "status"=>$req->updatedstatus
    ]);
                return response()->json(["message"=>$req->all()]);
 


      }        
}

                
        }
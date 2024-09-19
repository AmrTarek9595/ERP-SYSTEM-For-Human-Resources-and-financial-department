<template>
<img src="/img/loading.gif" style="position: absolute;left: 40%; top:30%; z-index: 1;" v-if="!user_type" >

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg" v-if="hr">
    <div v-if="form">
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Departments</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">HR</li>

    </ol>
    <h6 class="font-weight-bolder mb-0">Payroll</h6>
    </nav>

    </div>
    </nav>

    

    <div class="main-content position-relative bg-gray-100 max-height-vh-100 h-100 ps ps--active-y">



<div class="container-fluid py-4">
<div class="row">

<!-- Company Information -->

<!-- Title Page -->
<div class="col-12 col-xl-4">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Select Month and Year</h6>
</div>
<div class="col-md-4 text-end">
<router-link  to="" :onclick="display_salary">
<i class="fa-brands fa-searchengin text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Search date" data-bs-original-title="Search" style="transform: scale(1.8);"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

<ul class="list-group">
 

     <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Month:</strong> &nbsp; <select class="form-control" v-model="insertmonth"> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
    </select></li>
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Year:</strong> &nbsp; <select class="form-control" v-model="insertyear"> 
        <option value="2023">2023</option>
        <option value="2024">2024</option>


    </select></li> 
</ul>
</div>

</div>
</div>
</div>
<br>
<hr>
<div class="row">

<!-- Salary Statement -->
<div class="col-12 col-xl-12">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Employee Statement</h6>
</div>
<div class="col-md-4 text-end">
    <router-link  to=""  style="right: 189px;position: absolute;" :onclick="displayformtoemployeeform">
<button class="btn btn-primary">Calculate Payroll for anothe Employee</button>
</router-link>

<router-link  to=""  style="right: 515px;position: absolute;" :onclick="addexecuseviewform">
<button class="btn btn-primary">Add Execuse</button>
</router-link>

<router-link  to="" :onclick="displayformtopassfiletouploaddata">

<i class="fa-solid fa-file-arrow-up fa-2xl" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Payroll" data-bs-original-title="Add Payroll"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Name </th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Month</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Year</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># attendance dayes</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># absence Dayes</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># absence Hours</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># absence Mins</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># overtime mins</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># overtime Hours</th>





</tr>
</thead>
<tbody>
<tr v-for="data4 in salary_after_calculate" :key="data4.emp_id">
<td style="    white-space: break-spaces;">
<div class="d-flex  py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{data4.employee_name}}</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{data4.month}}</p>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{data4.year}}</p>
</td>






<td>
<p class="text-xs font-weight-bold mb-0">{{data4.total_attend_dayes}}</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data4.total_absent_dayes}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data4.total_absent_hours}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data4.total_absent_mins}}</span>
</td>



<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data4.overtime_mins}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data4.overtime_hours}}</span>
</td>








</tr>



</tbody>
</table>
</div>

</div>
</div>
</div>
</div>
</div>
</div>


<div class="container-fluid py-6 px-3 " v-if="!form">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="displayformtopassfiletouploaddata"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Upload Emplyee Data</h6>

</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form  action="" enctype= multipart/form-data>

    <div class="alert alert-primary" role="alert" v-if="display_message">
  <h2>{{display_message}}</h2>
</div>
  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
        Fingerprint File to Calculate Attendance days and absence hours and mins: (Accept files with .csv only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" accept=".csv" class="form-control" @change="selectFile" />
     
    </div>

   

   
  </div>


  <br>
  <div>

    <router-link  to="" class="formbold-btn w-full" :onclick="uploadfile">submit</router-link>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


</div>
</div>





<div class="container-fluid py-6 px-3 " v-if="!employeeform">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="displayformtoemployeeform"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Upload Emplyee Data</h6>

</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form  action="" enctype= multipart/form-data>

    <div class="alert alert-primary" role="alert" v-if="displayerrmessage">
  <h2>{{displayerrmessage}}</h2>
</div>

<label for="email" class="formbold-form-label">
            Employee Name:
    </label>
  <select class="formbold-form-input" v-model="emp_id">
    <option v-for="employee in employee.data" :key="employee.id" :value="employee.emp_id" >{{employee.emp_name}}</option>
  </select>




    <label for="email" class="formbold-form-label">
            Month:
    </label>
    <input
      type="number"
      name="number"
      
      placeholder="Month"
      class="formbold-form-input"
      v-model="month" required/>

      <label for="email" class="formbold-form-label">
            Year:
    </label>
    <input
      type="number"
      name="year"
      
      placeholder="Year"
      class="formbold-form-input"
      v-model="year" required/>




  <br>  <br>  <br>  <br>
  <div>

    <router-link  to="" class="formbold-btn w-full" :onclick="calculateSalary">submit</router-link>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


</div>
</div>


<div class="container-fluid py-6 px-3 " v-if="!execuse">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="addexecuseviewform"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Add Execuse</h6>

</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form  action="" enctype= multipart/form-data>

    <div class="alert alert-primary" role="alert" v-if="displayerrmessage">
  <h2>{{displayerrmessage}}</h2>
</div>

<label for="email" class="formbold-form-label">
            Employee Name:
    </label>
  <select class="formbold-form-input" v-model="emp_id">
    <option v-for="employee in employee.data" :key="employee.id" :value="employee.emp_id" >{{employee.emp_name}}</option>
  </select>




    <label for="email" class="formbold-form-label">
            Month:
    </label>
    <input
      type="number"
      name="number"
      
      placeholder="Month"
      class="formbold-form-input"
      v-model="month" required/>

      <label for="email" class="formbold-form-label">
            Year:
    </label>
    <input
      type="number"
      name="year"
      
      placeholder="Year"
      class="formbold-form-input"
      v-model="year" required/>

   

      <label for="execuse" class="formbold-form-label">
            Execuse:
    </label>
  <select class="form-control" v-model="notes">
    <option value="1">Execuse 1 hour</option>
    <option value="2">leave of absence</option>
    <option value="3">Double Paid</option>
    <option value="4">Add Half Hour</option>
 </select>
 <label for="email" class="formbold-form-label">
            Date:
    </label>
    <input
      type="Date"
      name="year"
      
      placeholder="Date"
      class="formbold-form-input"
      v-model="date" required/>

  <br>  <br>  <br>  <br>
  <div>
    <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
      Finger Print File: (Accept files with .jpg .png .pdf only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="file_name" id="custody_file" accept=".png,.jpg,.pdf" class="form-control"  @change="selectFile"/>
     
    </div>

   

   
  </div>
    <router-link  to="" class="formbold-btn w-full" :onclick="addexecuse">Add Execuse</router-link>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


</div>
</div>
    </main>
    </template>
    
    <script>
   
import { isEmpty } from 'lodash';

export default {
data: ()=>({
    hr:false,
    form:true,
    employeeform:true,
    execuse:true,
    arr:'',
    salary_after_calculate:'',
    file_name:'',
    display_message:'',
    employee:{},
    month:'',
    year:'',
    // salary:'',
    emp_id:'',
    displayerrmessage:'',
    notes:'',

    date:'',
    user_type:true,
    insertmonth:'',
    insertyear:'',

   
}),

mounted(){
    
if(isEmpty(localStorage.getItem("access_token_agent")))
{
   location.href="/login"
}
else{
    try{
        axios.post("https://erp.ersal.com.sa/api/auth/me?token="+localStorage.getItem("access_token_agent")).then(
    
        response=>
        {
            if(response.data.message.type==1){
              this.hr=true;
           
            }
    

            else if(response.data.message.type==2){
                 this.hr=true;
               
            }
            else{
                location.href="/departments"
            }
        }
    
    );
    }
    catch (err){
        console.log(err.message())
    }
}
axios.post("https://erp.ersal.com.sa/api/auth/return_distinict_users?token="+localStorage.getItem("access_token_agent")).then(
    response=>{
        this.arr=response.data.message
    }
)
// axios.post("https://erp.ersal.com.sa/api/auth/Display_salary_after_calculate?token="+localStorage.getItem("access_token_agent")).then(
//     response=>{
//         this.salary_after_calculate=response.data.message
//    this.salary_after_calculate;
//     }
// )

axios.post("https://erp.ersal.com.sa/api/auth/return_distinict_users?token="+localStorage.getItem("access_token_agent")).then(
    response=>{
   this.employee.data=response.data.message

    }
)

},
methods:{
    displayformtopassfiletouploaddata:function(){
         if(this.form)
         {
          this.form=false
        }
        else{
            this.form=true
        }
       
        }, 
    displayformtoemployeeform:function(){
         if(this.employeeform)
         {
          this.employeeform=false
         }
        else{
            this.employeeform=true
        }
       
        }, 
    addexecuseviewform:function(){
         if(this.execuse)
         {
          this.execuse=false
         }
        else{
            this.execuse=true
        }
       
        },
    selectFile:function(e){
           
           this.file_name=e.target.files[0]
           console.log(this.file_name)
           
       },
   
    uploadfile:function(){
            let formdata=new FormData;
            formdata.append('file_name',this.file_name)
            axios.post("https://erp.ersal.com.sa/api/auth/insertdatafingerprint?token="+localStorage.getItem("access_token_agent"),formdata).then(
                response=>{
                    this.display_message=response.data.message
            }
        )
      
        },
    calculateSalary:function(){
       
       let formdaTa=new FormData;
       formdaTa.append('month',this.month);
       formdaTa.append('year',this.year);
    //    formdaTa.append('salary',this.salary);
       formdaTa.append('emp_id',this.emp_id);
        
       axios.post("https://erp.ersal.com.sa/api/auth/calculate_salary?token="+localStorage.getItem("access_token_agent"),formdaTa).then(
                response=>{
                    console.log(response.data)
                 if(response.data.status=="true")
                 {
                    location.reload();
                    this.display_message="successfully added";
                 }
                 else if(response.data.status=="false")
                 {
                    this.displayerrmessage=response.data.message;
                 }
                 else{

                    this.displayerrmessage=response.data.message;
                 }
            }
        )
        },
    addexecuse:function(){
        this.user_type=false
            let formdaTa=new FormData;
       formdaTa.append('month',this.month);
       formdaTa.append('year',this.year);
    //    formdaTa.append('salary',this.salary);
       formdaTa.append('emp_id',this.emp_id);


       formdaTa.append('date',this.date);
       formdaTa.append('execuse_image',this.file_name);
       formdaTa.append('notes',this.notes);

     axios.post("https://erp.ersal.com.sa/api/auth/add_execuse_for_employee?token="+localStorage.getItem("access_token_agent"),formdaTa).then(
        response=>{
            if(response.data.status==true)
        {
            this.user_type=true
            location.reload();
        }
        else{
            this.user_type=true
            this.displayerrmessage=response.data.message;
        }
        }
     )
        },
        display_salary:function(){
            let formdata=new FormData;
            formdata.append("month",this.insertmonth);
            axios.post("https://erp.ersal.com.sa/api/auth/Display_salary_after_calculate?token="+localStorage.getItem("access_token_agent"),formdata).then(
    response=>{
        if(response.data.status=='false')
    {
        this.salary_after_calculate="";
    }
    else{
        this.salary_after_calculate=response.data.message
   this.salary_after_calculate;
    }


    }
)

        }
 
    }

}
    </script>
    
    <style lang="scss">
    .management{
        .row{
            .col-lg-6{
                height: 20rem;
                .DP{
                    background-size: 100% 100%;
        background-repeat: no-repeat;
    
                }
            }
        }
    }
    </style>
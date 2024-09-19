<template>


   

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg" v-if="hr" style="direction: rtl;">
      <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
{{faildorsuccessmessage}}
</div>
    <div >
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;"></a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">الأقسام</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">إدارة الموارد البشرية</li>
  


    </ol>
    <h6 class="font-weight-bolder mb-0">الأعذار</h6>
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
<h6 class="mb-0">اختر الشهر  والسنة</h6>
</div>
<div class="col-md-4 text-start">
<router-link  to="" :onclick="return_execuses">
<i class="fa-brands fa-searchengin text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Search date" data-bs-original-title="Search" style="transform: scale(1.8);"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

<ul class="list-group">


    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">شهر:</strong> &nbsp;
         <select class="form-control" v-model="month"> 

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
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">سنة:</strong> &nbsp; <select class="form-control" v-model="year"> 
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
<div class="col-12 col-xl-12" style="overflow: scroll;height: 50dvh;">
<div class="card ">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">الأعذار</h6>
</div>

</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الإسم</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الشهر</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">السنة</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">العذر</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">صورة الطلب</th>


</tr>
</thead>
<tbody>
<tr v-for="(q,index) in t" :key="index.id">
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{index+1}}</h6>
</div>
</div>
</td>
<td>
<p class="text-l font-weight-bold mb-0">{{q.employee_name}} </p>
</td>
<td class="align-middle text-left text-sm">
<p class="text-l font-weight-bold mb-0">{{q.month}} </p>
</td>
<td class="align-middle text-left text-sm">
{{q.year}}
</td>
<td class="align-middle text-left text-sm">
{{q.execuse}}
</td>
<td class="align-middle text-left text-sm">
<a :href="'/execuse/'+q.file_name"><span class="mb-0 text-sm">
    <svg version="1.1" width="40" height="40" id="fi_337946" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<path style="fill:#E2E5E7;" d="M128,0c-17.6,0-32,14.4-32,32v448c0,17.6,14.4,32,32,32h320c17.6,0,32-14.4,32-32V128L352,0H128z"></path>
<path style="fill:#B0B7BD;" d="M384,128h96L352,0v96C352,113.6,366.4,128,384,128z"></path>
<polygon style="fill:#CAD1D8;" points="480,224 384,128 480,128 "></polygon>
<path style="fill:#F15642;" d="M416,416c0,8.8-7.2,16-16,16H48c-8.8,0-16-7.2-16-16V256c0-8.8,7.2-16,16-16h352c8.8,0,16,7.2,16,16
	V416z"></path>
<g>
	<path style="fill:#FFFFFF;" d="M101.744,303.152c0-4.224,3.328-8.832,8.688-8.832h29.552c16.64,0,31.616,11.136,31.616,32.48
		c0,20.224-14.976,31.488-31.616,31.488h-21.36v16.896c0,5.632-3.584,8.816-8.192,8.816c-4.224,0-8.688-3.184-8.688-8.816V303.152z
		 M118.624,310.432v31.872h21.36c8.576,0,15.36-7.568,15.36-15.504c0-8.944-6.784-16.368-15.36-16.368H118.624z"></path>
	<path style="fill:#FFFFFF;" d="M196.656,384c-4.224,0-8.832-2.304-8.832-7.92v-72.672c0-4.592,4.608-7.936,8.832-7.936h29.296
		c58.464,0,57.184,88.528,1.152,88.528H196.656z M204.72,311.088V368.4h21.232c34.544,0,36.08-57.312,0-57.312H204.72z"></path>
	<path style="fill:#FFFFFF;" d="M303.872,312.112v20.336h32.624c4.608,0,9.216,4.608,9.216,9.072c0,4.224-4.608,7.68-9.216,7.68
		h-32.624v26.864c0,4.48-3.184,7.92-7.664,7.92c-5.632,0-9.072-3.44-9.072-7.92v-72.672c0-4.592,3.456-7.936,9.072-7.936h44.912
		c5.632,0,8.96,3.344,8.96,7.936c0,4.096-3.328,8.704-8.96,8.704h-37.248V312.112z"></path>
</g>
<path style="fill:#CAD1D8;" d="M400,432H96v16h304c8.8,0,16-7.2,16-16v-16C416,424.8,408.8,432,400,432z"></path>

</svg></span></a>
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



    </main>




    </template>
    
    <script>

import { isEmpty } from 'lodash';

export default {
data: ()=>({
    hr:false,
    form:true,
    t:'',
    faildorsuccessmessage:'',
    month:'',
    year:''
   
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
                location.href="/ar/departments"
            }
        }
    
    );
    }
    catch (err){
        console.log(err.message())
    }

}
},
methods:{


        return_execuses:function(){
         let formdata=new FormData;
         formdata.append("month",this.month);
         formdata.append("year",this.year);

          axios.post("https://erp.ersal.com.sa/api/auth/Display_all_execuses?token="+localStorage.getItem("access_token_agent"),formdata).then(
    
        response=>
        {
          if(response.data.status=='true'){
            this.faildorsuccessmessage=""
            this.t=response.data.message
          }
          else if(response.data.status=='false'){
               this.faildorsuccessmessage=response.data.message
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
<template>


   

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg" v-if="accountant">
      <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
{{faildorsuccessmessage}}
</div>
    <div v-if="form">
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Departments</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Finance</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Custody</li>


    </ol>
    <h6 class="font-weight-bolder mb-0">Incoming</h6>
    </nav>
    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
    <div class="input-group">
    <span class="input-group-text text-body"><i class="fa-solid fa-magnifying-glass"></i></span>
    <input type="text" class="form-control" placeholder="Type here...">
    </div>
    </div>
    <ul class="navbar-nav  justify-content-end">

    <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
    <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
    <div class="sidenav-toggler-inner">
    <i class="sidenav-toggler-line"></i>
    <i class="sidenav-toggler-line"></i>
    <i class="sidenav-toggler-line"></i>
    </div>
    </a>
    </li>
    
    
    </ul>
    </div>
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
<router-link  to="">
<i class="fa-brands fa-searchengin text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Search date" data-bs-original-title="Search" style="transform: scale(1.8);"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

<ul class="list-group">


    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Month:</strong> &nbsp; <select class="form-control"> 
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
    </select></li>
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Year:</strong> &nbsp; <select class="form-control"> 
        <option>2023</option>
        <option>2024</option>


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
<h6 class="mb-0">Income Statement</h6>
</div>
<div class="col-md-4 text-end">
    <router-link :onclick="displayform">
    <i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add New Job Offer" data-bs-original-title="Add New income"></i>
    </router-link>
</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Amount</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Month</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Year</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">File</th>


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
<p class="text-l font-weight-bold mb-0">{{q.amount}} </p>
</td>
<td class="align-middle text-left text-sm">
7
</td>
<td class="align-middle text-left text-sm">
{{q.year}}
</td>
<td class="align-middle text-left text-sm">
<a :href="'/income_custody/'+q.file_name"><span class="mb-0 text-sm">
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


<div class="container-fluid py-6 px-3 " v-if="!form">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="displayform"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Upload Income Custody Data</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form action="" method="POST" enctype= multipart/form-data>
  <div class="formbold-mb-5">
   
    
    <label for="email" class="formbold-form-label">
            Amount:
    </label>
    <input
      type="number"
      name="number"
      id="amount"
      placeholder="amount"
      class="formbold-form-input"
      v-model="amount"/>
    <label for="date" class="formbold-form-label">
     Day:
    </label>
    <input
      type="number"
      name="day"
      id="date"
      placeholder="Sent Day"
      class="formbold-form-input"
      v-model="day"
    />
    <label for="email" class="formbold-form-label">
      Month:
    </label>
    <input
      type="number"
      name="month"
      id="address"
      placeholder="Sent Month"
      class="formbold-form-input"
      v-model="month"
    />
    <label for="start date" class="formbold-form-label">
     Year:
    </label>
    <input
      type="number"
      name="year"
      id="start date"
      placeholder="Sent Year"

      class="formbold-form-input"
      v-model="year"
    />


    
  </div>

  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
      Finger Print File: (Accept files with .zip .rar only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="file_name" id="custody_file" accept=".png,.jpg,.pdf" class="form-control" @change="selectFile"/>
     
    </div>

   

   
  </div>


  
  <br>
  <div>

    <router-link to="" class="formbold-btn w-full" :onclick="uploadIncomeData">submit</router-link>
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
    accountant:false,
    form:true,
    t:'',
    amount:'',
    day:'',
    month:'',
    year:'',
    image:'',
    faildorsuccessmessage:''
   
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
              this.accountant=true;
           
            }
    

            else if(response.data.message.type==3){
                 this.accountant=true;
               
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
    axios.post("https://erp.ersal.com.sa/api/auth/displayincomecustody?token="+localStorage.getItem("access_token_agent")).then(response=>{
this.t=response.data.message['all data']
    })
}
},
methods:{
    displayform:function(){
         if(this.form)
         {
          this.form=false
        }
        else{
            this.form=true
        }
       
        },
        selectFile:function(e){
           
            this.image=e.target.files[0]
            console.log(this.image)
            
        },
        uploadIncomeData:function(){
          let formdata=new FormData;
          formdata.append('amount',this.amount)
          formdata.append('day',this.day)
          formdata.append('month',this.month);
          formdata.append('year',this.year);
          formdata.append('file_name',this.image);
          console.log(formdata)

          axios.post("https://erp.ersal.com.sa/api/auth/insertincomecustody?token="+localStorage.getItem("access_token_agent"),formdata).then(
    
        response=>
        {
          if(response.data.status=="true")
        {
          this.amount="",
          this.day="",
          this.month="",
          this.year="",
          this.image=""
          this.faildorsuccessmessage=response.data.message
          this.form=true;
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
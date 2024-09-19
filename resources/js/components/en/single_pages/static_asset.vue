<template>
<img src="/img/loading.gif" style="position: absolute;left: 40%; top:30%; z-index: 1;" v-if="!user_type" >
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
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Assets</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Static Assets</li>
    </ol>
    <h6 class="font-weight-bolder mb-0">Static Financial</h6>
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

    
   
    <div class="row container-fluid py-4">
    
    
    
    <div class="col-xl-3 col-sm-6">
    <div class="card">
    <div class="card-body p-3">
    <div class="row">
    <div class="col-4 text-start">
    <div class="icon icon-shape shadow text-center border-radius-md">
<svg id="Layer_1_1_" enable-background="new 0 0 64 64"  viewBox="0 0 64 64"  xmlns="http://www.w3.org/2000/svg"><path d="m56 34h-45c-1.657 0-3-1.343-3-3h51c0 1.657-1.343 3-3 3z" fill="#e8e5df"/><path d="m15 32h12c2.761 0 5-2.239 5-5v-3.067c0-4.933-3.955-11.933-5.133-11.933h-11.734c-1.178 0-5.133 7-5.133 11.933v3.067c0 2.761 2.239 5 5 5z" fill="#febe07"/><path d="m28.77 4.281-2.09 1.045c-.317.159-.702.068-.915-.216l-1.325-1.767c-.268-.357-.79-.394-1.105-.079l-1.738 1.738c-.316.316-.837.279-1.105-.079l-1.185-1.58c-.268-.357-.79-.394-1.105-.079l-2.03 2.03c-.188.188-.464.26-.72.187l-3.035-.867c-.625-.178-1.157.486-.845 1.057l3.428 6.329h12l2.775-6.781c.262-.627-.397-1.241-1.005-.938z" fill="#febe07"/><path d="m27 32c2.761 0 5-2.239 5-5v-3.067c0-4.933-3.955-11.933-5.133-11.933h-11.734c-.668 0 6.36.431 9.867 6 2.677 4.251 2 14 2 14z" fill="#e3a800"/><path d="m28.77 4.281-1.414.707c-2.747 2.756-6.199 4.722-9.994 5.671l-2.72.68.358.661h12l2.775-6.781c.262-.627-.397-1.241-1.005-.938z" fill="#e3a800"/><path d="m29 30h-12c-2.761 0-5-2.239-5-5v-3.067c0-3.292 1.76-7.495 3.282-9.933h-.149c-1.178 0-5.133 7-5.133 11.933v3.067c0 2.761 2.239 5 5 5h12c1.897 0 3.527-1.069 4.375-2.625-.71.386-1.511.625-2.375.625z" fill="#e3a800"/><path d="m35 4h10v28h-10z" fill="#cbe6fe"/><path d="m45 16-4 4-4 4h2v8h6z" fill="#a9c6eb"/><path d="m29.3 16h-3.3v16h9v-16z" fill="#cbe6fe"/><path d="m47 27h4v5h-4z" fill="#a9c6eb"/><path d="m57.707 30c-1.046 0-2.003.591-2.471 1.527l-.236.473-3 6-7 3c0-2.209-1.791-4-4-4h-14.398c-5.595 0-11.05 1.748-15.602 5v15h23.606c4.832 0 9.566-1.358 13.663-3.919 6.195-3.871 10.456-10.188 11.725-17.381l.434-2.458c.298-1.691-1.003-3.242-2.721-3.242z" fill="#ffe5cf"/><path d="m55 24h-12v8h4v-5h4v5h4z" fill="#cbe6fe"/><path d="m57 24-8-8-4 4-4 4z" fill="#e3a800"/><path d="m32 16h3v16h-3z" fill="#a9c6eb"/><path d="m13.079 40.669c-.709.414-1.407.851-2.079 1.331v15h23.606l-5.675-.525c-8.466-.784-15.065-7.496-15.852-15.806z" fill="#f5dcc7"/><path d="m23 20v-1c0-.552-.447-1-1-1h-1v-1h-2v1h-1c-.553 0-1 .448-1 1v3c0 .552.447 1 1 1h3v1h-4v1c0 .552.447 1 1 1h1v1h2v-1h1c.553 0 1-.448 1-1v-3c0-.552-.447-1-1-1h-3v-1z" fill="#fefefe"/><path d="m41 47h-16v-2h16c1.654 0 4-2.346 4-4l1 1c0 2.757-2.243 5-5 5z" fill="#f5dcc7"/><g fill="#2b67b3"><path d="m38 7h1v2h-1z"/><path d="m41 7h1v2h-1z"/><path d="m38 11h1v2h-1z"/><path d="m41 11h1v2h-1z"/><path d="m38 15h1v2h-1z"/><path d="m41 15h1v2h-1z"/><path d="m29 19h1v2h-1z"/><path d="m32 19h1v2h-1z"/><path d="m29 23h1v2h-1z"/><path d="m32 23h1v2h-1z"/><path d="m29 27h1v2h-1z"/><path d="m32 27h1v2h-1z"/><path d="m38 19h1v2h-1z"/><path d="m41 19h1v2h-1z"/></g><path d="m53 4h2v2h-2z" fill="#febe07"/><path d="m55 2h2v2h-2z" fill="#febe07"/><path d="m57 4h2v2h-2z" fill="#febe07"/><path d="m55 6h2v2h-2z" fill="#febe07"/><path d="m60 9h2v2h-2z" fill="#febe07"/><path d="m53 12h2v2h-2z" fill="#febe07"/><path d="m2 11h2v2h-2z" fill="#febe07"/><path d="m4 9h2v2h-2z" fill="#febe07"/><path d="m6 11h2v2h-2z" fill="#febe07"/><path d="m4 13h2v2h-2z" fill="#febe07"/><path d="m2 19h2v2h-2z" fill="#febe07"/><path d="m6 2h2v2h-2z" fill="#febe07"/><path d="m10 37h-6c-.552 0-1 .448-1 1v22c0 .552.448 1 1 1h6c.552 0 1-.448 1-1v-22c0-.552-.448-1-1-1z" fill="#2b67b3"/><path d="m7 44c-.552 0-1-.448-1-1v-1c0-.552.448-1 1-1 .552 0 1 .448 1 1v1c0 .552-.448 1-1 1z" fill="#fefefe"/></svg>
    </div>
    </div>
    <div class="col-8">
    <div class="numbers">
    
    <h5 class="font-weight-bolder mb-0">
        Static Assets
    <!-- <span class="text-success text-sm font-weight-bolder">+5%</span> -->
    </h5>
    </div>
    </div>
    
    </div>
    </div>
    </div>
    </div>
    </div>
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
<div class="col-12 col-xl-12">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Assets Statement</h6>
</div>
<div class="col-md-4 text-end">
<router-link to="" :onclick="displayform">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Invoice" data-bs-original-title="Add Invoice"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Serial Number </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">type</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Brand</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">month </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">year </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Cost</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Notes</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Invoice</th>
</tr>
</thead>
<tbody>
<tr v-for="data  in p" :key="data.id">
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{data.serial_number}}</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{data.type}}</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.brand}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.month}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.year}} </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.cost}} SAR</span>
</td>

<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.notes}} </span>
</td>
<td class="align-middle text-left text-sm" v-if="data.file_name!=null">
    <a :href="'/static_assets/'+data.file_name">
        <span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
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

<h6>Upload Static Assets Data</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form action="" method="POST" enctype= multipart/form-data>
  <div class="formbold-mb-5">
   
    <label for="serial number" class="formbold-form-label">
            Serial Number:
    </label>
    <input
      type="number"
      name="number"
      id="amount"
      placeholder="Serial Number"
      class="formbold-form-input"
      v-model="serial_number"/>



      <label for="email" class="formbold-form-label">
            type:
    </label>
    <!-- <input
      type="number"
      name="number"
      id="amount"
      placeholder="amount"
      
      v-model="cost"/> -->
      <select class="formbold-form-input"  v-model="type">
        <option value="laptop">laptop</option>
        <option value="dispenser">dispenser</option>
        <option value="air conditioner">air conditioner</option>

        
      </select>


      <label for="email" class="formbold-form-label">
            brand:
    </label>
  <select class="formbold-form-input"  v-model="brand">
    <option>hp</option>
    <option>dell</option>
    <option>macOS</option>
    <option>sokany</option>
    <option>midea</option>
    <option>carrier</option>
    
    
    
  </select>




    <label for="email" class="formbold-form-label">
            month:
    </label>
    <input
      type="number"
      name="number"
      
      placeholder="Month"
      class="formbold-form-input"
      v-model="month"/>
    <label for="date" class="formbold-form-label">
     year:
    </label>
    <input
      type="number"
      name="year"
      id="date"
      placeholder="year"
      class="formbold-form-input"
      v-model="year"
    />
    <label for="email" class="formbold-form-label">
      cost:
    </label>
    <input
      type="number"
    placeholder="cost"
      class="formbold-form-input"
      v-model="cost"
    />
    <label for="start date" class="formbold-form-label">
     notes:
    </label>
    <textarea
      type="number"
      name="year"
      id="start date"
      placeholder="notes"

      class="formbold-form-input"
      v-model="notes"
    ></textarea>


    
  </div>

  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
      Finger Print File: (Accept files with .jpg .png .pdf only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="file_name" accept=".png,.jpg,.pdf" class="form-control" @change="selectFile"/>
     
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
    p:'',
    serial_number:'',
    notes:'',
    cost:'',
    year:'',
    month:'',
 type:'',
 brand:'',
    image:'',
    faildorsuccessmessage:'',
    user_type:true
   
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
}
axios.post("https://erp.ersal.com.sa/api/auth/displaystaticassets?token="+localStorage.getItem("access_token_agent")).then(
    
        response=>
        {
            this.p=response.data.message;
        }
    )
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
 
            
        },
        uploadIncomeData:function(){
          this.user_type=false;
          let formdata=new FormData;
         

    
   
          formdata.append('serial_number',this.serial_number);
          formdata.append('notes',this.notes);
          formdata.append('cost',this.cost);
          formdata.append('year',this.year);

          formdata.append('month',this.month)
          formdata.append('type',this.type);
          formdata.append('brand',this.brand);


          if(this.image !='')
          {

          formdata.append('file_name',this.image);
          axios.post("https://erp.ersal.com.sa/api/auth/insertstaticasset?token="+localStorage.getItem("access_token_agent"),formdata).then(
    
        response=>
        {

    this.serial_number=''
this.notes=''
this.cost=''
this.year=''
this.month=''
this.type=''
this.brand=''

          this.faildorsuccessmessage=response.data.message
          this.form=true;
          location.reload();

        } 
  
       
     
        
      ).catch(error=>{
       
      })
    }

    else if(this.image =='')
    {


        

          // console.log(formdata)

          axios.post("https://erp.ersal.com.sa/api/auth/insertstaticasset?token="+localStorage.getItem("access_token_agent"),formdata).then(
    
        response=>
        {
console.log(response.data.message)
     this.user_type=true;
     location.reload();
  

        }
      ).catch(error=>{
       console.log(error.message)
      })
   }
//    
  
//           
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
<template>

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="admin">
        <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
            {{faildorsuccessmessage}}
        </div>
    <div v-if="!form">
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Clients</li>
    </ol>
    <h6 class="font-weight-bolder mb-0">Clients</h6>
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
<svg id="Layer_1" enable-background="new 0 0 512 512" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g clip-rule="evenodd" fill-rule="evenodd"><g><path d="m44.83 344.373 35.775 133.512c8.645-7.19 16.374-12.986 23.578-17.506 8.448-5.633 17.029-9.52 26.198-11.4 9.721-2.116 19.401-1.723 30.347.783.012.003.023.005.035.008l72.614 16.647c16.534 3.791 32.074 2.326 46.769-6.158l181.589-104.837c16.203-9.355 21.804-30.265 12.45-46.471-9.353-16.204-30.267-21.808-46.47-12.453l-126.46 73.008c.095-.317.187-.637.274-.958 5.429-19.944-6.484-40.767-26.428-46.197l-126.771-34.505c-16.826-2.228-32.102 1.847-45.577 12.168z" fill="#ffd6bd"/><path d="m259.8 378.313c17.158 4.662 34.915-3.456 43.025-18.489-.083 2.893-.504 5.817-1.295 8.723-5.437 19.971-26.227 31.877-46.195 26.427-24.676-6.735-49.388-13.233-74.099-19.854-4.6-1.233-7.354-6.003-6.122-10.602 1.232-4.6 6.003-7.354 10.603-6.121 24.662 6.607 49.3 13.182 74.083 19.916z" fill="#f9c6aa"/><path d="m53.968 316.092 43.731 163.205c1.067 3.982-1.316 8.11-5.297 9.177l-30.164 8.083c-3.981 1.067-8.109-1.316-9.176-5.299l-43.731-163.206c-1.067-3.982 1.316-8.111 5.297-9.177l30.164-8.082c3.981-1.067 8.109 1.317 9.176 5.299z" fill="#64b5f6"/></g><g><circle cx="276.585" cy="62.217" fill="#ffd6bd" r="47.027"/><path d="m363.436 200.952c-2.765-45.412-40.775-81.708-86.851-81.708s-84.087 36.296-86.851 81.708c-.087 1.428.37 2.688 1.35 3.73s2.211 1.574 3.642 1.574h163.719c1.43 0 2.662-.532 3.642-1.574.979-1.042 1.436-2.303 1.349-3.73z" fill="#ffda2d"/></g><g><ellipse cx="141.4" cy="110.259" fill="#ffd6bd" rx="47.028" ry="47.027" transform="matrix(.984 -.178 .178 .984 -17.404 26.999)"/><path d="m228.251 248.995c-2.765-45.412-40.775-81.708-86.851-81.708s-84.086 36.296-86.851 81.708c-.087 1.428.37 2.688 1.35 3.73s2.211 1.574 3.642 1.574h163.719c1.43 0 2.662-.532 3.642-1.574.979-1.042 1.436-2.303 1.349-3.73z" fill="#72d561"/></g><g><ellipse cx="416.062" cy="110.259" fill="#ffd6bd" rx="47.027" ry="47.027" transform="matrix(.707 -.707 .707 .707 43.897 326.495)"/><path d="m502.913 248.995c-2.765-45.412-40.775-81.708-86.851-81.708s-84.087 36.296-86.851 81.708c-.087 1.428.37 2.688 1.35 3.73s2.211 1.574 3.642 1.574h163.719c1.43 0 2.662-.532 3.642-1.574.979-1.042 1.436-2.303 1.349-3.73z" fill="#fc685b"/></g></g></svg>
    </div>
    </div>
    <div class="col-8">
    <div class="numbers">
    
    <h5 class="font-weight-bolder mb-0">
        Clients Page
    <!-- <span class="text-success text-sm font-weight-bolder">+5%</span> -->
    </h5>
    </div>
    </div>
    
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- Clients Sheets -->
    <div class="container-fluid py-4">
        
        <div class="row">
            
        <div class="col-12">
            <div class="card h-100">
                <div class="card mb-4">
                    <div class="card-header pb-0 p-3">
        <div class="row">
        <div class="col-md-8 d-flex align-items-center">
        <h6 class="mb-0">Clients Sheet</h6>
        </div>
        <div class="col-md-4 text-end">
            <!-- Add New File -->
        <router-link  to="" :onclick="displayform">
        <i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Payroll" data-bs-original-title="Add Client Sheet"></i>
        </router-link>
        </div>
        </div>
        </div>
            
            <div class="card-body px-0 pt-0 pb-2">
                
            <div class="table-responsive p-0" style="height: 40dvh; scrollbar-width: thin;    scrollbar-color: #6969dd69 #ffffff;">
            <table class="table align-items-center mb-0">
            <thead>
            <tr>
            
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">#</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Description</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Date From</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Date To</th>

            </tr>
            </thead>
            <tbody>
            <tr v-for="(data,index) in o"  :key="index">
            <td>
            <div class="d-flex px-2 py-1">
  
            <div class="d-flex flex-column justify-content-center">
            <h6 class="mb-0 text-sm">{{index+1}}</h6>
        
            </div>
            </div>
            </td>
            <td>
            <p class="text-xs font-weight-bold mb-0">{{data.description}}</p>
            </td>
        
            <td class="align-middle text-left">
            <span class="text-secondary text-xs font-weight-bold">{{data.from_date}}</span>
            </td>
            <td class="align-middle text-left">
        <span class="text-secondary text-xs font-weight-bold">{{data.to_date}}</span>
        </td>


        <td class="align-middle text-left">
            <a :href="'/clients_sheet/'+data.file_name">
        <span class="text-secondary text-xs font-weight-bold"><svg id="fi_8361467" height="40" viewBox="0 0 480 480" width="40" xmlns="http://www.w3.org/2000/svg"><g id="Layer_1-2"><g id="XLSX"><g id="Base"><path d="m0 232.9 42.91-42.91v42.91z" fill="#135431"></path><path d="m480 232.9-42.91-42.91v42.91z" fill="#135431"></path><path d="m340 0h-274.64c-14.01 0-25.36 11.19-25.36 25v430c0 13.81 11.35 25 25.36 25h349.28c14.01 0 25.36-11.19 25.36-25v-355z" fill="#35bd73"></path><path d="m340 0 100 100h-100z" fill="#d9ffeb"></path><path d="m0 232.9h480v180h-480z" fill="#229456"></path><path d="m440 100v100l-100-100z" fill="#1b9754"></path><g fill="#d9ffeb"><rect height="20" rx="10" width="139.48" x="80" y="96.69"></rect><rect height="20" rx="10" width="230" x="80" y="134.8"></rect><rect height="20" rx="10" width="230" x="80" y="172.9"></rect></g></g><g id="XLSX-2" fill="#fff"><path d="m104.5 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path><path d="m186.17 356.45h44.75v19.78h-70.46v-106.64h25.71v86.87z"></path><path d="m296.76 347.88c0-3.76-1.33-6.69-3.99-8.79s-7.34-4.27-14.03-6.52-12.16-4.42-16.41-6.52c-13.82-6.79-20.73-16.11-20.73-27.98 0-5.91 1.72-11.12 5.16-15.64s8.31-8.03 14.61-10.55c6.3-2.51 13.38-3.77 21.24-3.77s14.54 1.37 20.62 4.1c6.08 2.74 10.8 6.63 14.17 11.68s5.05 10.83 5.05 17.32h-25.63c0-4.35-1.33-7.71-3.99-10.11-2.66-2.39-6.26-3.59-10.8-3.59s-8.22 1.01-10.88 3.04-3.99 4.6-3.99 7.73c0 2.74 1.46 5.21 4.39 7.43s8.08 4.52 15.45 6.88c7.37 2.37 13.43 4.92 18.16 7.65 11.52 6.64 17.29 15.8 17.29 27.47 0 9.33-3.52 16.65-10.55 21.97s-16.68 7.98-28.93 7.98c-8.64 0-16.47-1.55-23.47-4.65-7.01-3.1-12.28-7.35-15.82-12.74s-5.31-11.61-5.31-18.64h25.78c0 5.71 1.48 9.92 4.43 12.63s7.75 4.07 14.39 4.07c4.25 0 7.6-.92 10.07-2.75 2.46-1.83 3.7-4.41 3.7-7.73z"></path><path d="m375.42 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path></g></g></g></svg></span>
            </a>

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
    <!-- End Clients Sheet -->

    <!-- client DB -->
    <div class="container-fluid py-4">
        
<div class="row">
    
<div class="col-12">
    <div class="card h-100">
        <div class="card mb-4">
            <div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Clients</h6>
</div>
<div class="col-md-4 text-end">
<router-link  to="" :onclick="displayanotherform">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Payroll" data-bs-original-title="Add Client"></i>
</router-link>
</div>
</div>
</div>
    
    <div class="card-body px-0 pt-0 pb-2">
        
    <div class="table-responsive p-0" style="
    height: 40dvh;scrollbar-color: #6969dd69 #ffffff;    scrollbar-width: thin;
">
    <table class="table align-items-center mb-0">
    <thead>
    <tr>
    
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Name</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Service</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Contact Number</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Contract Date</th>
    
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Time Frame</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Price Residual</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Price Paid Up</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"></th>

    </tr>
    </thead>
    <tbody>
    <tr v-for="(data,index) in c" :key="index">
    <td>
    <div class="d-flex px-2 py-1">

    <div class="d-flex flex-column justify-content-center">
    <h6 class="mb-0 text-sm">{{data.name}}</h6>

    </div>
    </div>
    
    </td>
    <td>
    <p class="text-xs font-weight-bold mb-0">{{data.service}}</p>
    </td>

    <td>
    <p class="text-xs font-weight-bold mb-0">{{data.contact_number}}</p>
    </td>
    <td class="align-middle text-left">
    <span class="text-secondary text-xs font-weight-bold">{{data.start_contract}}</span>
    </td>
    <td class="align-middle text-left">
    <span class="text-secondary text-xs font-weight-bold">{{data.time_frame}}</span>
    </td>
    <td class="align-middle text-left">
    <span class="text-secondary text-xs font-weight-bold">{{data.price_residual}}</span>
    </td>
    <td class="align-middle text-left">
    <span class="text-secondary text-xs font-weight-bold">{{data.price_paid}}</span>
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
<!-- End Client DB -->
</div>

<div class="container-fluid py-6 px-3 " v-if="form">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="displayform"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Upload Campaign Files</h6>
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
            Date From:
    </label>


    <input
      type="date"
      name="number"
      id="amount"
      placeholder="amount"
      class="formbold-form-input"
      v-model="from_date"/>


      <label for="email" class="formbold-form-label">
            Date To:
    </label>
    <input
      type="date"
      name="number"
      id="amount"
      placeholder="amount"
      class="formbold-form-input"
      v-model="to_date"/>
    <label for="date" class="formbold-form-label">
        Description:
    </label>
    <input
      type="text"
      name="day"
      id="date"
      placeholder="Description"
      class="formbold-form-input"
      v-model="description"
    />


 
    
  </div>

  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
      Finger Print File: (Accept files with .xlsx .pdf only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="file_name" id="custody_file" accept=".xlsx,.pdf,.xls" class="form-control" @change="selectFile"/>
     
    </div>

   

   
  </div>


  
  <br>
  <div>

    <router-link to="" class="formbold-btn w-full" :onclick="uploadfiles">submit</router-link>
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


<div class="container-fluid py-6 px-3 " v-if="anotherform">
    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<button :onclick="displayform"  style="float: right;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>Upload Client Data</h6>
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
            Name:
    </label>


    <input
      type="text"
      name="name"
      id="amount"
      placeholder="Name"
      class="formbold-form-input"
      v-model="name" required/>

      
      <label for="date" class="formbold-form-label">
        Service:
    </label>
    <input
      type="text"
      name="Services"
      id="date"
      placeholder="Service"
      class="formbold-form-input"
      v-model="service"
      required
    />

      <label for="contact number" class="formbold-form-label">
            Contact Number:
    </label>
    <input
      type="number"
      name="PHONR NUMBER"
      id="amount"
      placeholder="Phone Number"
      class="formbold-form-input"
      v-model="number"
      required
      />
      <label for="date" class="formbold-form-label">
        Start contract Date
    </label>
    <input
      type="date"
      name="day"
      id="date"
      placeholder="ٍStart Contract"
      class="formbold-form-input"
      v-model="start_contract"
      required
    />
    <label for="date" class="formbold-form-label">
        Time Frame:
    </label>
    <input
      type="number"
      name="Time Frame"
      id="date"
      placeholder="Time frame"
      class="formbold-form-input"
      v-model="time_frame"
      required
    />

    <label for="date" class="formbold-form-label">
        Price Residual:
    </label>
    <input
      type="number"
      name="day"
      id="date"
      placeholder="Price Residual"
      class="formbold-form-input"
      v-model="price_residual"
      required
    />    <label for="date" class="formbold-form-label">
        Price Paid:
    </label>
    <input
      type="number"
      name="day"
      id="date"
      placeholder="Price Paid"
      class="formbold-form-input"
      v-model="price_paid"
      required
    />
 
    
  </div>




  
  <br>
  <div>

    <router-link to="" class="formbold-btn w-full" :onclick="uploadclientprofile">submit</router-link>
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
    import axios from 'axios';
import { isEmpty } from 'lodash';

    export default {
        data: ()=>({
            admin:false,
            o:'',
            form:false,
            description:'',
            to_date:'',
            from_date:'',
            file_name:'',
            faildorsuccessmessage:'',
            anotherform:false,
            c:'',
            name:'',
            service:'',
            number:'',
            time_frame:'',
            price_residual:'',
            price_paid:'',
            start_contract:''
   
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
                  this.admin=true;
               
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
    axios.post("https://erp.ersal.com.sa/api/auth/DisplayclientsSheet?token="+localStorage.getItem("access_token_agent")).then(
        
        response=>
        {
            if(response.data.status=="true")
        {
                   this.o=response.data.message
            
        }
    
        })
        axios.post("https://erp.ersal.com.sa/api/auth/DisplayclientsProfile?token="+localStorage.getItem("access_token_agent")).then(
        
        response=>
        {
            if(response.data.status=="true")
        {
                   this.c=response.data.message
            
        }
    
        })
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
        displayanotherform:function(){
         if(this.anotherform)
         {
          this.anotherform=false 
          
        }
        else{
            this.anotherform=true
        }
       
        },
        selectFile:function(e){
           
           this.file_name=e.target.files[0]
           console.log(this.file_name)
           
       },
       uploadfiles:function(){
        let formdata=new FormData;
        formdata.append("to_date",this.to_date)
        formdata.append("from_date",this.from_date)
        formdata.append("description",this.description)
        formdata.append("file_name",this.file_name)

        axios.post("https://erp.ersal.com.sa/api/auth/insertclientsSheet?token="+localStorage.getItem("access_token_agent"),formdata).then(
            response=>{
                this.faildorsuccessmessage=response.data.message
                location.reload()
                console.log(response.data.message)
            }
        )
    },
    uploadclientprofile:function(){
         let formdata=new FormData;
        formdata.append("name",this.name)
        formdata.append("service",this.service)
        formdata.append("time_frame",this.time_frame)
        formdata.append("start_contract",this.start_contract)
        
        formdata.append("contact_number",this.number)
              formdata.append("price_residual",this.price_residual)
          formdata.append("price_paid",this.price_paid)
      
       

   axios.post("https://erp.ersal.com.sa/api/auth/insertclientsprofile?token="+localStorage.getItem("access_token_agent"),formdata).then(
            response=>{
                this.faildorsuccessmessage=response.data.message
                location.reload()
                console.log(response.data.message)
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
    .shadow{
        box-shadow:none !important;
    }
    </style>
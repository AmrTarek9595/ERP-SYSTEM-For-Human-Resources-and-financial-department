<template>

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="accountant" style="direction:rtl">
    
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">

        <div style="text-align: center;display: block;" class="container-fluid py-1 px-3">
            <h3 >ملفات بصمة الموظفين</h3>
        </div>
    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
  
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
<h6 class="mb-0">أختر الشهر و السنة</h6>
</div>
<div class="col-md-4 text-start">
<router-link  to="">
<i class="fa-brands fa-searchengin text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Search date" data-bs-original-title="Search" style="transform: scale(1.8);"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

<ul class="list-group">
 

    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">شهر:</strong> &nbsp; <select class="form-control"> 
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
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">سنة:</strong> &nbsp; <select class="form-control"> 
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
<h6 class="mb-0">حالة ملفات البصمة</h6>
</div>
<div class="col-md-4 text-end">

</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"># </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">شهر</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">سنة</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الملف</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الحالة</th>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"></th>
</tr>
</thead>
<tbody>
<tr v-for="(data , index) in q" :key="index">
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{index+1}}</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{data.month}}</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{data.year}}</span>
</td>
<td class="align-middle text-left text-sm">
<a :href="'/fingerprintsfile/'+data.file_name" class="mb-0 text-sm">
    <svg id="fi_8361467" height="30" viewBox="0 0 480 480" width="30" xmlns="http://www.w3.org/2000/svg"><g id="Layer_1-2"><g id="XLSX"><g id="Base"><path d="m0 232.9 42.91-42.91v42.91z" fill="#135431"></path><path d="m480 232.9-42.91-42.91v42.91z" fill="#135431"></path><path d="m340 0h-274.64c-14.01 0-25.36 11.19-25.36 25v430c0 13.81 11.35 25 25.36 25h349.28c14.01 0 25.36-11.19 25.36-25v-355z" fill="#35bd73"></path><path d="m340 0 100 100h-100z" fill="#d9ffeb"></path><path d="m0 232.9h480v180h-480z" fill="#229456"></path><path d="m440 100v100l-100-100z" fill="#1b9754"></path><g fill="#d9ffeb"><rect height="20" rx="10" width="139.48" x="80" y="96.69"></rect><rect height="20" rx="10" width="230" x="80" y="134.8"></rect><rect height="20" rx="10" width="230" x="80" y="172.9"></rect></g></g><g id="XLSX-2" fill="#fff"><path d="m104.5 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path><path d="m186.17 356.45h44.75v19.78h-70.46v-106.64h25.71v86.87z"></path><path d="m296.76 347.88c0-3.76-1.33-6.69-3.99-8.79s-7.34-4.27-14.03-6.52-12.16-4.42-16.41-6.52c-13.82-6.79-20.73-16.11-20.73-27.98 0-5.91 1.72-11.12 5.16-15.64s8.31-8.03 14.61-10.55c6.3-2.51 13.38-3.77 21.24-3.77s14.54 1.37 20.62 4.1c6.08 2.74 10.8 6.63 14.17 11.68s5.05 10.83 5.05 17.32h-25.63c0-4.35-1.33-7.71-3.99-10.11-2.66-2.39-6.26-3.59-10.8-3.59s-8.22 1.01-10.88 3.04-3.99 4.6-3.99 7.73c0 2.74 1.46 5.21 4.39 7.43s8.08 4.52 15.45 6.88c7.37 2.37 13.43 4.92 18.16 7.65 11.52 6.64 17.29 15.8 17.29 27.47 0 9.33-3.52 16.65-10.55 21.97s-16.68 7.98-28.93 7.98c-8.64 0-16.47-1.55-23.47-4.65-7.01-3.1-12.28-7.35-15.82-12.74s-5.31-11.61-5.31-18.64h25.78c0 5.71 1.48 9.92 4.43 12.63s7.75 4.07 14.39 4.07c4.25 0 7.6-.92 10.07-2.75 2.46-1.83 3.7-4.41 3.7-7.73z"></path><path d="m375.42 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path></g></g></g>
    </svg>
</a>
</td>
<td class="align-middle text-left text-sm">
    <span class="mb-0 text-sm" v-if="data.status==1">تم الموافقه
    <svg height="30" viewBox="0 0 520 520" width="30" xmlns="http://www.w3.org/2000/svg" id="fi_5290058"><g id="_15-Checked" data-name="15-Checked"><circle cx="208.52" cy="288.5" fill="#b0ef8f" r="176.52"></circle><path d="m210.516 424.937-2.239-3.815c-34.2-58.27-125.082-181.928-126-183.17l-1.311-1.781 30.963-30.6 98.012 68.439c61.711-80.079 119.283-135.081 156.837-167.2 41.081-35.135 67.822-51.31 68.092-51.465l.608-.364h52.522l-5.017 4.468c-129.029 114.926-268.883 359.19-270.276 361.644z" fill="#009045"></path></g></svg> 
</span>
</td>

<td class="align-middle text-left text-sm">
<button class="btn btn-primary" v-on:click="changestatusforfingerprint(data.id)" v-if="data.status==0">تغيير الحالة</button>
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

    </main>
    </template>
    
    <script>

import { isEmpty } from 'lodash';

export default {
data: ()=>({
    accountant:false,
    q:{}
   
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

axios.post("https://erp.ersal.com.sa/api/auth/displayfingerprintfiles?token="+localStorage.getItem("access_token_agent")).then(response=>{
    this.q=response.data.message;
  
});
},
methods:{
    changestatusforfingerprint:function($id){
        axios.post("https://erp.ersal.com.sa/api/auth/updatefingerprintfiles?token="+localStorage.getItem("access_token_agent")+"&id="+$id).then(
    
    response=>
    {
        location.reload();
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
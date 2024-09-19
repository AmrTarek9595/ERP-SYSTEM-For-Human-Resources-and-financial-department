<template>

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="hr" style="direction: rtl;">

      <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
            {{faildorsuccessmessage}}
        </div>
        <img src="/img/loading.gif" style="position: absolute;left: 40%; top:30%; z-index: 1;" v-if="loader" >

    <div v-if="form">
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;"></a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">الأقسام</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">إدارة الموارد البشرية</li>

    </ol>
    <h6 class="font-weight-bolder mb-0">ملفات البصمة</h6>
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
<h6 class="mb-0">اختر الشهر و السنة</h6>
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
<h6 class="mb-0">حالة ملف البصمة</h6>
</div>
<div class="col-md-4 text-start">
<router-link  to="" :onclick="displayform">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Payroll" data-bs-original-title="Add fingerprint file"></i>
</router-link>
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
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">ملف</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الموافقة</th>

</tr>
</thead>
<tbody>
<tr v-for="(data,index) in r" :key="data.id">
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
<td class="align-middle text-left text-sm" >
<a :href="'https://erp.ersal.com.sa/fingerprintsfile/'+data.file_name" class="mb-0 text-sm">
    <svg id="fi_8361467" height="30" viewBox="0 0 480 480" width="30" xmlns="http://www.w3.org/2000/svg"><g id="Layer_1-2"><g id="XLSX"><g id="Base"><path d="m0 232.9 42.91-42.91v42.91z" fill="#135431"></path><path d="m480 232.9-42.91-42.91v42.91z" fill="#135431"></path><path d="m340 0h-274.64c-14.01 0-25.36 11.19-25.36 25v430c0 13.81 11.35 25 25.36 25h349.28c14.01 0 25.36-11.19 25.36-25v-355z" fill="#35bd73"></path><path d="m340 0 100 100h-100z" fill="#d9ffeb"></path><path d="m0 232.9h480v180h-480z" fill="#229456"></path><path d="m440 100v100l-100-100z" fill="#1b9754"></path><g fill="#d9ffeb"><rect height="20" rx="10" width="139.48" x="80" y="96.69"></rect><rect height="20" rx="10" width="230" x="80" y="134.8"></rect><rect height="20" rx="10" width="230" x="80" y="172.9"></rect></g></g><g id="XLSX-2" fill="#fff"><path d="m104.5 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path><path d="m186.17 356.45h44.75v19.78h-70.46v-106.64h25.71v86.87z"></path><path d="m296.76 347.88c0-3.76-1.33-6.69-3.99-8.79s-7.34-4.27-14.03-6.52-12.16-4.42-16.41-6.52c-13.82-6.79-20.73-16.11-20.73-27.98 0-5.91 1.72-11.12 5.16-15.64s8.31-8.03 14.61-10.55c6.3-2.51 13.38-3.77 21.24-3.77s14.54 1.37 20.62 4.1c6.08 2.74 10.8 6.63 14.17 11.68s5.05 10.83 5.05 17.32h-25.63c0-4.35-1.33-7.71-3.99-10.11-2.66-2.39-6.26-3.59-10.8-3.59s-8.22 1.01-10.88 3.04-3.99 4.6-3.99 7.73c0 2.74 1.46 5.21 4.39 7.43s8.08 4.52 15.45 6.88c7.37 2.37 13.43 4.92 18.16 7.65 11.52 6.64 17.29 15.8 17.29 27.47 0 9.33-3.52 16.65-10.55 21.97s-16.68 7.98-28.93 7.98c-8.64 0-16.47-1.55-23.47-4.65-7.01-3.1-12.28-7.35-15.82-12.74s-5.31-11.61-5.31-18.64h25.78c0 5.71 1.48 9.92 4.43 12.63s7.75 4.07 14.39 4.07c4.25 0 7.6-.92 10.07-2.75 2.46-1.83 3.7-4.41 3.7-7.73z"></path><path d="m375.42 305.03 17.43-35.45h29.37l-29.81 52.88 30.62 53.76h-29.66l-17.94-36.11-17.94 36.11h-29.59l30.54-53.76-29.74-52.88h29.3l17.43 35.45z"></path></g></g></g>
    </svg>
</a>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">تم الموافقه
    <svg height="30" viewBox="0 0 520 520" width="30" xmlns="http://www.w3.org/2000/svg" id="fi_5290058"><g id="_15-Checked" data-name="15-Checked"><circle cx="208.52" cy="288.5" fill="#b0ef8f" r="176.52"></circle><path d="m210.516 424.937-2.239-3.815c-34.2-58.27-125.082-181.928-126-183.17l-1.311-1.781 30.963-30.6 98.012 68.439c61.711-80.079 119.283-135.081 156.837-167.2 41.081-35.135 67.822-51.31 68.092-51.465l.608-.364h52.522l-5.017 4.468c-129.029 114.926-268.883 359.19-270.276 361.644z" fill="#009045"></path></g></svg> 
</span>
</td>
<td class="align-middle text-left text-sm" v-if="data.status==1">
<span class="mb-0 text-sm">تم الموافقه من الحسابات
    <svg height="30" viewBox="0 0 520 520" width="30" xmlns="http://www.w3.org/2000/svg" id="fi_5290058"><g id="_15-Checked" data-name="15-Checked"><circle cx="208.52" cy="288.5" fill="#b0ef8f" r="176.52"></circle><path d="m210.516 424.937-2.239-3.815c-34.2-58.27-125.082-181.928-126-183.17l-1.311-1.781 30.963-30.6 98.012 68.439c61.711-80.079 119.283-135.081 156.837-167.2 41.081-35.135 67.822-51.31 68.092-51.465l.608-.364h52.522l-5.017 4.468c-129.029 114.926-268.883 359.19-270.276 361.644z" fill="#009045"></path></g></svg> 
</span>
</td>

<td class="align-middle text-left text-sm" v-if="data.status==0">
<span class="mb-0 text-sm">لم يتم الموافقه بعد من الحسابات
    <svg id="fi_8072917" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" width="30" xmlns="http://www.w3.org/2000/svg"><g><g><circle cx="256" cy="256" fill="#fe646f" r="256"></circle></g><g><path d="m302.935 4.308c78.84 39.253 133.017 120.638 133.017 214.689 0 132.382-107.317 239.699-239.699 239.699-54.348 0-104.462-18.098-144.67-48.582 46.729 61.883 120.898 101.886 204.417 101.886 141.385 0 256-114.615 256-256 0-125.351-90.099-229.645-209.065-251.692z" fill="#fd4755"></path></g><g><circle cx="256" cy="256" fill="#fe99a0" r="219.625"></circle></g><g><circle cx="256" cy="256" fill="#f3f0f3" r="171.082"></circle></g><g><circle cx="256" cy="256" fill="#f3f0f3" r="171.082"></circle></g><g><path d="m396.448 87.157c24.96 37.825 39.503 83.131 39.503 131.84 0 132.382-107.317 239.699-239.699 239.699-9.812 0-19.482-.604-28.986-1.75 27.136 12.001 57.153 18.679 88.733 18.679 121.296 0 219.625-98.329 219.625-219.625.001-67.877-30.798-128.556-79.176-168.843z" fill="#fd8087"></path></g><path d="m294.023 260.472c-2.429-2.444-2.423-6.392.014-8.828l41.686-41.686c5.23-5.23 5.23-13.71 0-18.94l-14.549-14.548c-5.219-5.219-13.676-5.231-18.911-.029l-41.725 41.47c-2.449 2.434-6.407 2.422-8.841-.027l-41.324-41.578c-5.225-5.257-13.727-5.27-18.968-.029l-14.934 14.934c-5.23 5.23-5.23 13.709 0 18.939l41.363 41.363c2.447 2.447 2.441 6.416-.014 8.855l-41.513 41.259c-5.258 5.225-5.27 13.727-.029 18.969l14.933 14.933c5.23 5.23 13.71 5.23 18.94 0l41.428-41.428c2.441-2.441 6.4-2.441 8.841 0l41.621 41.621c5.23 5.23 13.71 5.23 18.94 0l14.548-14.548c5.218-5.219 5.231-13.676.029-18.91z" fill="#fd8087"></path></g></svg>
</span>
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
<button :onclick="displayform"  style="float: left;background: none;border: none;">
    <svg height="40" viewBox="0 0 365.71733 365" width="40" xmlns="http://www.w3.org/2000/svg" id="fi_1828665"><g fill="#f44336"><path d="m356.339844 296.347656-286.613282-286.613281c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503906-12.5 32.769532 0 45.25l286.613281 286.613282c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082032c12.523438-12.480468 12.523438-32.75.019532-45.25zm0 0"></path><path d="m295.988281 9.734375-286.613281 286.613281c-12.5 12.5-12.5 32.769532 0 45.25l15.082031 15.082032c12.503907 12.5 32.769531 12.5 45.25 0l286.632813-286.59375c12.503906-12.5 12.503906-32.765626 0-45.246094l-15.082032-15.082032c-12.5-12.523437-32.765624-12.523437-45.269531-.023437zm0 0"></path></g></svg>
</button>

<h6>رفع ملفات البصمة</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form action="" method="POST" enctype= multipart/form-data>
  <div class="formbold-mb-5">
    <label for="month" class="formbold-form-label">
     شهر
    </label>
    <input
      type="number"
      name="start_date"
      id="start date"
    
      class="formbold-form-input"
    v-model="month"
      required/>




    <label for="full name" class="formbold-form-label">
      سنة:
    </label>
    <input
      type="number"
      name="name"
      id="name"
   
      class="formbold-form-input"
      v-model="year"
    required/>
  </div>

  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
       ملف البصمة: (Accept files with .pdf only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="custody_file" id="custody_file" accept=".pdf" class="form-control" @change="selectFile" required/>
     
    </div>

   

   
  </div>


 
  <br>
  <div>

    <router-link to="" class="formbold-btn w-full" :onclick="uploadIncomeData">رفع</router-link>
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
    r:{},
    month:'',
    year:'',
    file_name:'',
    loader:false,
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
axios.post("https://erp.ersal.com.sa/api/auth/displayfingerprintfileshr?token="+localStorage.getItem("access_token_agent")).then(
    response=>{
        this.r=response.data.message
        console.log(response.data.message)
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
           
           this.file_name=e.target.files[0]
           console.log(this.file_name)
           
       },
       uploadIncomeData:function(){
        this.loader=true
            let formdata=new FormData;
          formdata.append('month',this.month)
          formdata.append('year',this.year)
          formdata.append('file_name',this.file_name)

          axios.post("https://erp.ersal.com.sa/api/auth/insertfingerprintfiles?token="+localStorage.getItem("access_token_agent"),formdata).then(
    
        response=>
        {
          this.faildorsuccessmessage=response.data.message
          location.reload();
          

        //   this.month="",
        //   this.year="",
        //   this.file_name="", 
        //   this.form=true;

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
<template>
<img src="/img/loading.gif" style="z-index:1;position: absolute;left: 40%; top:30%" v-if="loading">

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="hr" style="direction:rtl">
      <div class="alert alert-warning" role="alert" v-if="requestMessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
{{requestMessage}}
</div>
    <div v-if="form">
    
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;"></a></li>
    <li class=" text-sm text-dark active" aria-current="page"></li>
    </ol>
    <h6 class="font-weight-bolder mb-0">الموظفين</h6>
    </nav>
    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
 
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
    <div class="col-4 text-end">
    <div class="icon icon-shape shadow text-center border-radius-md">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 511.999 511.999" style="enable-background:new 0 0 511.999 511.999;" xml:space="preserve">
<g>
	<path style="fill:#7A609E;" d="M181.924,200.026c0-20.501-16.773-37.274-37.274-37.274h-30.162V137.1h0.326l15.604-17.185
		c5.858-6.451,9.103-14.854,9.103-23.567V60.128c0-20.984-17.011-37.995-37.995-37.995H80.399
		c-20.984,0-37.995,17.011-37.995,37.995v36.221c0,8.715,3.245,17.116,9.103,23.567L67.11,137.1h0.326v25.651H37.274
		C16.773,162.752,0,179.525,0,200.026v51.259h174.475L181.924,200.026z"/>
	<path style="fill:#7A609E;" d="M330.075,200.026c0-20.501,16.773-37.274,37.274-37.274h30.162V137.1h-0.326l-15.604-17.185
		c-5.858-6.451-9.103-14.854-9.103-23.567V60.128c0-20.984,17.011-37.995,37.995-37.995H431.6c20.984,0,37.995,17.011,37.995,37.995
		v36.221c0,8.715-3.245,17.116-9.103,23.567L444.889,137.1h-0.326v25.651h30.162c20.501,0,37.274,16.773,37.274,37.274v51.259
		H347.955L330.075,200.026z"/>
</g>
<path style="fill:#52D6C6;" d="M243.897,39.38c-23.634,0-42.794,19.159-42.794,42.794v40.794c0,9.815,3.655,19.277,10.253,26.543
	l17.574,19.355h0.367v28.89h-33.97c-23.089,0-41.98,18.891-41.98,41.98v57.731h204.897v-57.731c0-23.089-18.891-41.98-41.98-41.98
	h-33.97v-28.89h0.367l17.574-19.355c6.597-7.266,10.253-16.729,10.253-26.543V82.173c0-23.635-19.159-42.794-42.794-42.794
	C267.694,39.38,243.897,39.38,243.897,39.38z"/>
<g style="opacity:0.1;">
	<path d="M316.262,197.756h-32.027c23.089,0,41.98,18.891,41.98,41.98v57.731h32.027v-57.731
		C358.242,216.647,339.352,197.756,316.262,197.756z"/>
	<path d="M278.459,82.173v40.794c0,9.815-3.655,19.277-10.253,26.543l-17.574,19.355h-0.367v28.89h32.027v-28.89h0.367
		l17.574-19.355c6.597-7.266,10.253-16.729,10.253-26.543V82.173c0-23.634-19.159-42.794-42.794-42.794h-23.796
		c-1.389,0-2.761,0.072-4.116,0.201C261.484,41.653,278.459,59.928,278.459,82.173z"/>
</g>
<g>
	<polygon style="fill:#FDC00F;" points="258.982,358.093 280.976,400.664 328.26,408.426 294.568,442.498 301.798,489.866 
		258.982,468.353 216.167,489.866 223.397,442.498 189.705,408.426 236.99,400.664 	"/>
	<polygon style="fill:#FDC00F;" points="432.694,299.744 454.687,342.314 501.971,350.077 468.28,384.148 475.51,431.516 
		432.694,410.003 389.879,431.516 397.109,384.148 363.417,350.077 410.701,342.314 	"/>
	<polygon style="fill:#FDC00F;" points="85.271,299.744 107.265,342.314 154.549,350.077 120.857,384.148 128.087,431.516 
		85.271,410.003 42.455,431.516 49.685,384.148 15.994,350.077 63.279,342.314 	"/>
</g>

</svg>    </div>
    </div>
    <div class="col-8">
    <div class="numbers">
    
    <h5 class="font-weight-bolder mb-0">
        الموظفين
    <!-- <span class="text-success text-sm font-weight-bolder">+5%</span> -->
    </h5>
   
    </div> 
    
    </div>
   
    </div>
    </div>

</div>

</div>
<div class="col-xl-3 col-sm-6 text-start"><button  :onclick="displayform" class="btn btn-primary" >اضافة موظف جديد</button>
  
</div>


</div>













    
    <div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>الموظفين الحاليين</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الإسم</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">رقم التواصل</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">أول مسمي وظيفي </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">أخر مسمي وظيفي</th>
<th class="text-secondary opacity-7">الملف</th>
</tr>
</thead>
<tbody>
<tr v-for="data in t.employee" :key="data.id">
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{data.name}}</h6>
<p class="text-xs text-secondary mb-0">{{data.email}}</p>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{ data.phone_number }}</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm" v-if="data.start_job_title!=NULL ">{{data.start_job_title}}</span>
</td>

<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm" v-if="data.end_job_title!='null' ">{{data.end_job_title}}</span>

</td>

<td class="align-middle text-left">
<span class="text-secondary text-xs font-weight-bold">
  <router-link :to="'/ar/single/emloyee?id='+data.id" class="btn btn-outline-primary btn-sm mb-0 me-3">رؤية الملف</router-link></span>
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

<!-- LEAVE EMPLOYEE -->

<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>الموظفين السابقين</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">الإسم</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">رقم التواصل</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">أول مسمي وظيفي</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">أخر مسمي وظيفي</th>
<th class="text-secondary opacity-7">الملف</th>
</tr>
</thead>
<tbody>
<tr v-for="data2 in t.exemployee" :key="data2.id">
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{data2.name}}</h6>
<p class="text-xs text-secondary mb-0">{{data2.email}}</p>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">{{data2.phone_number}}</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm" v-if="data2.start_job_title != NULL">{{data2.start_job_title}}</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm" v-if="data2.end_job_title != NULL">{{ data2.end_job_title }}</span>
</td>
<td class="align-middle text-left">
<span class="text-secondary text-xs font-weight-bold"><router-link :to="'/ar/single/emloyee?id='+data2.id" class="btn btn-outline-primary btn-sm mb-0 me-3">رؤية الملف</router-link></span>
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

<h6>إضافة بيانات موظف جديد</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<div class="formbold-main-wrapper">
<!-- Author: FormBold Team -->
<!-- Learn More: https://formbold.com -->
<div class="formbold-form-wrapper">
<form action="" method="POST" enctype= multipart/form-data>
  <div class="formbold-mb-5">
    <label for="full name" class="formbold-form-label">
    حالة الموظف:
    </label>
    <select class="formbold-form-input" name="type_emplyee" v-model="h.status" required>
        <option selected disabled>Select one</option>
        <option value="0">Current</option>
        <option value="1">Leave</option>
    </select>
    <label for="full name" class="formbold-form-label">
      الإسم كامل:
    </label>
    <input
      type="text"
      name="name"
      id="name"
      placeholder="John Doe"
      class="formbold-form-input"
      v-model="h.name"
      required
    />
    <label for="email" class="formbold-form-label">
      البريد الإلكتروني:
    </label>
    <input
      type="email"
      name="email"
      id="email"
      placeholder="Enter Employee email"
      class="formbold-form-input"
      v-model="h.email"
    />
    <label for="phone number" class="formbold-form-label">
     رقم التواصل:
    </label>
    <input
      type="number"
      name="phone_number"
      id="phone_number"
      placeholder="Phone Number"
      class="formbold-form-input"
      v-model="h.phone_number"
      required
    />
    <label for="email" class="formbold-form-label">
      العنوان:
    </label>
    <input
      type="text"
      name="address"
      id="address"
      placeholder="Address"
      class="formbold-form-input"
      v-model="h.location"
      required
    />
    <label for="start date" class="formbold-form-label">
      تاريخ بداية العمل:
    </label>
    <input
      type="date"
      name="start_date"
      id="start date"
    
      class="formbold-form-input"
      v-model="h.start_date"
      required
    />
    <label for="End date" class="formbold-form-label">
      تاريخ نهاية العمل:
    </label>
    <input
      type="date"
      name="end_date"
      id="end date"
      class="formbold-form-input"
      v-model="h.end_date"
    />
    <label for="start title" class="formbold-form-label">
      بداية المسمي الوظيفي:
    </label>
    <input
      type="text"
      name="start_title"
      id="start_title"
      class="formbold-form-input"
      v-model="h.start_job_title"
      required
    />
    <label for="end title" class="formbold-form-label">
      نهاية المسمي الوظيفي:
    </label>
    <input
      type="text"
      name="end_title"
      id="end_title"
      class="formbold-form-input"
      v-model="h.end_job_title"
    />
    <label for="salary" class="formbold-form-label">
      الراتب:
    </label>
    <input
      type="number"
      name="salary"
      id="salary"
      class="formbold-form-input"
      
    />
  </div>

  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
        أوراق العهده: (Accept files with .zip .rar only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="custody_file" id="custody_file" accept=".zip,.rar" class="form-control" @change="selectfile_1"/>
     
    </div>

   

   
  </div>


  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
        أوراق التعيين: (Accept files with .zip .rar only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="requirement_file" id="requirement_file" accept=".zip,.rar" class="form-control" @change="selectfile_2" required/>

    </div>

   

   
  </div>
  <br>
  <div>

    <button type="submit" class="formbold-btn w-full" @click.prevent="sendUpdatedData">submit</button>
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
        t:{},
        h:{},
        loading:false,
        requestMessage:''
      
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
        axios.post("https://erp.ersal.com.sa/api/auth/displayemployees?token="+localStorage.getItem("access_token_agent")).then(
    
        response=>
        {
 
            
           this.t.employee=response.data.message.employee
           this.t.exemployee=response.data.message['ex-employee']
    
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
        
        selectfile_1:function(e){
            this.h.custody_paper=e.target.files[0]
       

            if (this.h.custody_paper.size > 20 * 1024 * 1024) {
        alert("choice another image less than 20 MB");
        this.h.custody_paper = "";
            } 
            console.log( this.h.custody_paper)
        },
        selectfile_2:function(e){
            this.h.requirements_paper= e.target.files[0]

            if (this.h.requirements_paper.size > 20 * 1024 * 1024) {
        alert("choice another image less than 20 MB");
        this.h.requirements_paper = "";
        

      }
      console.log( this.h.requirements_paper)
        },
        sendUpdatedData:function(){
            this.loading=true;
            let formdata=new FormData;
           
      

            if(this.h.requirements_paper !=null && this.h.custody_paper !=null){
            formdata.append("status",this.h.status);
            formdata.append("name",this.h.name);
            formdata.append("phone_number",this.h.phone_number);
            formdata.append("email",this.h.email);
            formdata.append("location",this.h.location);
            formdata.append("start_date",this.h.start_date);
            formdata.append("end_date",this.h.end_date);
            formdata.append("basic_salary",this.h.basic_salary);
            formdata.append("start_job_title",this.h.start_job_title);
            formdata.append("end_job_title",this.h.end_job_title);
            formdata.append("requirements_paper",this.h.requirements_paper);
            formdata.append("custody_paper", this.h.custody_paper);
                 axios.post("https://erp.ersal.com.sa/api/auth/insertemployee?token="+localStorage.getItem("access_token_agent"),formdata).then(response=>
            {
            this.requestMessage=response.data.message
            this.loading=false;
            this.form=true
        })
            
            }
            else if(this.h.requirements_paper !=null && this.h.custody_paper==null)
            {
              formdata.append("status",this.h.status);
            formdata.append("name",this.h.name);
            formdata.append("phone_number",this.h.phone_number);
            formdata.append("email",this.h.email);
            formdata.append("location",this.h.location);
            formdata.append("start_date",this.h.start_date);
            formdata.append("end_date",this.h.end_date);
            formdata.append("basic_salary",this.h.basic_salary);
            formdata.append("start_job_title",this.h.start_job_title);
            formdata.append("end_job_title",this.h.end_job_title);
            formdata.append("requirements_paper",this.h.requirements_paper);
   

                 axios.post("https://erp.ersal.com.sa/api/auth/insertemployee?token="+localStorage.getItem("access_token_agent"),formdata).then(response=>
            {
                this.requestMessage=response.data.message
                this.loading=false;
                this.form=true
        })
            }
            
           
            
            
       
      
        }


}
              }
       

    
  
    </script>
    
    <style lang="scss">
    .hideform {
    display: none;
      }
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
    .formbold-mb-5 {
    margin-bottom: 20px;
  }
  .formbold-pt-3 {
    padding-top: 12px;
  }
  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 550px;
    width: 100%;
    background: white;
  }
  .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: #07074d;
    margin-bottom: 12px;
  }
  .formbold-form-label-2 {
    font-weight: 600;
    font-size: 20px;
    margin-bottom: 20px;
  }

  .formbold-form-input {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }
  .formbold-form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold-btn {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    cursor: pointer;
  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold--mx-3 {
    margin-left: -12px;
    margin-right: -12px;
  }
  .formbold-px-3 {
    padding-left: 12px;
    padding-right: 12px;
  }
  .flex {
    display: flex;
  }
  .flex-wrap {
    flex-wrap: wrap;
  }
  .w-full {
    width: 100%;
  }

  .formbold-file-input input {
  
  }

  .formbold-file-input label {
    position: relative;
    border: 1px dashed #e0e0e0;
    border-radius: 6px;
    min-height: 200px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
    text-align: center;
  }
  .formbold-drop-file {
    display: block;
    font-weight: 600;
    color: #07074d;
    font-size: 20px;
    margin-bottom: 8px;
  }

  .formbold-or {
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    display: block;
    margin-bottom: 8px;
  }
  .formbold-browse {
    font-weight: 500;
    font-size: 16px;
    color: #07074d;
    display: inline-block;
    padding: 8px 28px;
    border: 1px solid #e0e0e0;
    border-radius: 4px;
  }







  @media (min-width: 540px) {
    .sm\:w-half {
      width: 50%;
    }
  }

    </style>
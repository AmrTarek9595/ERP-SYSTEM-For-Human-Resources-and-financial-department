<template>
    <img src="/img/loading.gif" style="position: absolute;left: 40%; top:30%; z-index: 1;" v-if="!user_type" >
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg" v-if="hr">
            <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
    {{faildorsuccessmessage}}
    </div>
        <div v-if="form">
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
        <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
        <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Deparments</li>
        <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Human Resources</li>
        </ol>
        <h6 class="font-weight-bolder mb-0">CVs</h6>
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
        <div class="col-4 text-start">
        <div class="icon icon-shape shadow text-center border-radius-md">
            <svg version="1.1" id="fi_942748" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<path style="fill:#FFFFFF;" d="M394.007,502h-364c-11.046,0-20-8.954-20-20V30c0-11.046,8.954-20,20-20h364c11.046,0,20,8.954,20,20
	v452C414.007,493.046,405.053,502,394.007,502z"></path>
<circle style="fill:#FE6663;" cx="212.01" cy="146" r="82"></circle>
<path style="fill:#FFCDAC;" d="M238.007,135.5v6.5c0,14.359-11.641,26-26,26l0,0l0,0c-14.359,0-26-11.641-26-26v-6.5
	c0-14.359,11.641-26,26-26l0,0C226.366,109.5,238.007,121.141,238.007,135.5z"></path>
<path style="fill:#A5DDFF;" d="M212.007,168L212.007,168c-25.38,0-47.064,15.767-55.832,38.033
	C170.815,219.655,190.432,228,212.007,228s41.192-8.345,55.832-21.967C259.071,183.767,237.387,168,212.007,168z"></path>
<path style="fill:#FFBC53;" d="M436.574,160.59l5.714-9.897c8.837-15.305,28.407-20.549,43.713-11.713l0,0
	c15.305,8.837,20.549,28.407,11.713,43.713L371.873,400.656l-55.426-32l54.282-94.02L436.574,160.59z"></path>
<path style="fill:#FE6663;" d="M486.002,138.98L486.002,138.98c-15.305-8.837-34.876-3.593-43.713,11.713l-14.857,25.733l55.426,32
	l14.857-25.733C506.551,167.388,501.307,147.817,486.002,138.98z"></path>
<polygon style="fill:#9AD8FF;" points="371.873,400.656 307.589,448 316.447,368.656 "></polygon>
<path d="M414.007,398.328c-5.522,0-10,4.477-10,10V482c0,5.514-4.486,10-10,10h-364c-5.514,0-10-4.486-10-10V30
	c0-5.514,4.486-10,10-10h364c5.514,0,10,4.486,10,10v108.75c0,5.523,4.478,10,10,10s10-4.477,10-10V30c0-16.542-13.458-30-30-30
	h-364c-16.542,0-30,13.458-30,30v452c0,16.542,13.458,30,30,30h364c16.542,0,30-13.458,30-30v-73.672
	C424.007,402.805,419.529,398.328,414.007,398.328z"></path>
<path d="M304.007,146c0-50.729-41.271-92-92-92s-92,41.271-92,92c0,26.317,11.11,50.085,28.882,66.869
	c0.333,0.356,0.687,0.693,1.074,1c16.371,14.979,38.158,24.13,62.043,24.13s45.672-9.152,62.043-24.13
	c0.387-0.307,0.741-0.645,1.074-1C292.897,196.085,304.007,172.317,304.007,146z M212.007,74c39.701,0,72,32.299,72,72
	c0,15.967-5.231,30.73-14.06,42.683c-7.375-10.938-17.596-19.445-29.463-24.697c4.71-6.087,7.523-13.712,7.523-21.986v-6.5
	c0-19.851-16.149-36-36-36s-36,16.149-36,36v6.5c0,8.274,2.813,15.899,7.523,21.986c-11.867,5.252-22.088,13.759-29.463,24.697
	c-8.829-11.953-14.06-26.716-14.06-42.683C140.007,106.299,172.306,74,212.007,74z M196.007,142v-6.5c0-8.822,7.178-16,16-16
	s16,7.178,16,16v6.5c0,8.822-7.178,16-16,16S196.007,150.822,196.007,142z M168.516,203.332
	c8.789-15.585,25.19-25.332,43.491-25.332s34.702,9.747,43.491,25.332C243.405,212.528,228.336,218,212.007,218
	S180.608,212.528,168.516,203.332z"></path>
<path d="M266.007,438h-54c-5.522,0-10,4.477-10,10s4.478,10,10,10h54c5.522,0,10-4.477,10-10S271.529,438,266.007,438z"></path>
<path d="M266.007,382h-142c-5.522,0-10,4.477-10,10s4.478,10,10,10h142c5.522,0,10-4.477,10-10S271.529,382,266.007,382z"></path>
<path d="M266.007,326h-142c-5.522,0-10,4.477-10,10s4.478,10,10,10h142c5.522,0,10-4.477,10-10S271.529,326,266.007,326z"></path>
<path d="M88.366,272.93c-1.859-1.86-4.439-2.93-7.079-2.93c-2.631,0-5.211,1.07-7.07,2.93c-1.86,1.86-2.93,4.44-2.93,7.07
	s1.069,5.21,2.93,7.07c1.87,1.86,4.439,2.93,7.07,2.93c2.64,0,5.21-1.07,7.079-2.93c1.86-1.86,2.931-4.44,2.931-7.07
	S90.227,274.79,88.366,272.93z"></path>
<path d="M88.366,328.93c-1.869-1.86-4.439-2.93-7.079-2.93c-2.631,0-5.2,1.07-7.07,2.93c-1.86,1.86-2.93,4.44-2.93,7.07
	s1.069,5.21,2.93,7.07c1.87,1.86,4.439,2.93,7.07,2.93c2.64,0,5.21-1.07,7.079-2.93c1.86-1.86,2.931-4.44,2.931-7.07
	S90.227,330.79,88.366,328.93z"></path>
<path d="M81.287,382c-2.631,0-5.2,1.07-7.07,2.93c-1.86,1.86-2.93,4.44-2.93,7.07s1.069,5.21,2.93,7.07
	c1.859,1.86,4.439,2.93,7.07,2.93c2.64,0,5.22-1.07,7.079-2.93c1.86-1.86,2.931-4.44,2.931-7.07s-1.07-5.21-2.931-7.07
	C86.497,383.07,83.927,382,81.287,382z"></path>
<path d="M266.007,270h-142c-5.522,0-10,4.477-10,10s4.478,10,10,10h142c5.522,0,10-4.477,10-10S271.529,270,266.007,270z"></path>
<path d="M491.002,130.32c-9.715-5.609-21.033-7.099-31.871-4.196c-10.836,2.904-19.894,9.854-25.502,19.569L307.787,363.656
	c-0.689,1.195-1.125,2.52-1.278,3.891l-8.858,79.344c-0.44,3.948,1.498,7.783,4.938,9.77c1.553,0.896,3.278,1.34,4.999,1.34
	c2.092,0,4.176-0.655,5.931-1.948l64.284-47.344c1.111-0.818,2.041-1.857,2.73-3.052l125.841-217.963
	C517.954,167.638,511.058,141.9,491.002,130.32z M324.689,384.962l28.942,16.71l-33.568,24.722L324.689,384.962z M368.213,386.996
	l-38.105-22l100.985-174.91l38.105,22L368.213,386.996z M489.054,177.693l-9.857,17.073l-38.105-22l9.857-17.073
	c2.938-5.089,7.682-8.729,13.358-10.25c5.678-1.522,11.606-0.74,16.694,2.198c5.089,2.938,8.729,7.682,10.25,13.358
	C492.772,166.675,491.992,172.604,489.054,177.693z"></path>

</svg>
        </div>
        </div>
        <div class="col-8">
        <div class="numbers">
        
        <h5 class="font-weight-bolder mb-0">
            CVs
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
    <h6 class="mb-0">Cv Statement</h6>
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
    
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">#</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Upload Date</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Job Title</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Interview Date</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Current Status</th>
    
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Status</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">CV</th>
    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"></th>
    </tr>
    </thead>
    <tbody>
    <tr v-for="(p,index) in p" :key="p.id">
    <td>
    <div class="d-flex px-2 py-1">
    
    <div class="d-flex flex-column justify-content-center">
    <h6 class="mb-0 text-sm">{{index+1}}</h6>
    </div>
    </div>
    </td>
    <td>
    <p class="text-xs font-weight-bold mb-0">{{p.created_at}}</p>
    </td>
    <td class="align-middle text-left text-sm">
    <span class="mb-0 text-sm">{{ p.job_title }}</span>
    </td>
    <td class="align-middle text-left text-sm">
    <span class="mb-0 text-sm">{{ p.interview_date }}</span>
    </td>   
    <td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">{{ p.status }}</span>
    </td>
    <td class="align-middle text-left text-sm">
    <select class="formbold-form-input"  v-model="canged_staus[p.id]" required>

      <option :value="'رفض - المرتب غير متوافق'">rejected - salary is low</option>
      <option value="رفض - الخبرة قليلة">rejected - Experince is low </option>
      <option value="رفض - الخبرة عالية">rejected - Experince is overqualified </option>
      <option value="قبول">Accepted </option>
    
    </select>
    </td>
    <td class="align-middle text-left text-sm">
      <a :href="'/cv/'+p.cv_file">
    <span class="mb-0 text-sm">File </span>
      </a>  
  </td>

    <td class="align-middle text-left text-sm">
    <span class="mb-0 text-sm"><button class="btn btn-primary" type="submit" v-on:click="dochanged(p.id)">Change</button> </span>
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
    
    <h6>Upload New CV</h6>
    </div>
    <div class="card-body px-0 pt-0 pb-2">
    <div class="table-responsive p-0">
    <div class="formbold-main-wrapper">
    <!-- Author: FormBold Team -->
    <!-- Learn More: https://formbold.com -->
    <div class="formbold-form-wrapper">
    <form action="" method="POST" enctype= multipart/form-data>
      <div class="formbold-mb-5">
       
        <label for="Interview Date" class="formbold-form-label">
                Interview Date:
        </label>
        <input
          type="date"
          name="interview_date"
          placeholder="Interview Date"
          class="formbold-form-input"
          v-model="interview_date"/>
    
    
    
          <label for="Job Title" class="formbold-form-label">
            Job Title:
        </label>

                 <input
                  type="text"
                  name="Job_Title"
                  placeholder="Job Title"
                  class="formbold-form-input"
                  v-model="job_title"/>
    
    
          <label for="Status" class="formbold-form-label">
            Status:
        </label>
      <select class="formbold-form-input"  v-model="Status">
        <option :value="'رفض - المرتب غير متوافق'">rejected - salary is low</option>
      <option value="رفض - الخبرة قليلة">rejected - Experince is low </option>
      <option value="رفض - الخبرة عالية">rejected - Experince is overqualified </option>
      <option value="قبول">Accepted </option>
        
        
        
      </select>
    
    
        
      </div>
    
      <div class="mb-6 pt-4">
        <label class="formbold-form-label formbold-form-label-2">
          CV File: (Accept files with .pdf only )
        </label>
    
        <div class="formbold-mb-5 formbold-file-input">
          <input type="file" name="file_name" accept=".pdf" class="form-control" @change="selectFile"/>
         
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
        hr:false,
        form:true,
        p:'',
        interview_date:'',
        job_title:'',
Status:'',
        image:'',
        canged_staus:[],
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
    axios.post("https://erp.ersal.com.sa/api/auth/display_cv?token="+localStorage.getItem("access_token_agent")).then(
        
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
     
                console.log(this.image)
            },
        uploadIncomeData:function(){
              this.user_type=false;
              let formdata=new FormData;
             
    
        
       
              formdata.append('interview_date',this.interview_date);
              formdata.append('statu',this.Status);
              formdata.append('job_title',this.job_title);
              formdata.append('cv_file',this.image)

              
    console.log(this.interview_date,this.Status,this.job_title,this.image)
    
              if(this.image !='')
              {
    
        
              axios.post("https://erp.ersal.com.sa/api/auth/insert_cv?token="+localStorage.getItem("access_token_agent"),formdata).then(
        
            response=>
            {
  
    
              this.faildorsuccessmessage=response.data.message
              this.user_type=true;
              this.form=true;
              location.reload();
              
    
            } 
      
           
         
            
          ).catch(error => {
    console.log(error.response.data);
});
        }
    

       
      
              
    },
    dochanged:function(id){
      
   axios.post("https://erp.ersal.com.sa/api/auth/update_cv?token="+localStorage.getItem("access_token_agent")+"&id="+id+"&updatedstatus="+this.canged_staus[id])
   .then(
    response=>{
      location.reload();
                
                
   }).catch(error => {
    console.log(error.response.data);
});
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
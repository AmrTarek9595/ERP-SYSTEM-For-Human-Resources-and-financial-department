<template>
<img src="img/loading.gif" style="position: absolute;left: 40%; top:30%" v-if="!user_type">


    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="user_type" style="direction: rtl;">

<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
<div style="text-align: center;display: block;" class="container-fluid py-1 px-3">
<h3 >الرئيسية</h3>
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

<div class="container-fluid py-4" >
<div class="row" style="
    justify-content: space-between;
">
<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
<div class="card">
<div class="card-body p-3">
<div class="row">
<div class="col-8">
<div class="numbers">
<p class="text-sm mb-0 text-capitalize font-weight-bold"> الموظفين</p>
<h5 class="font-weight-bolder mb-0">
{{data.count}}
</h5>
</div>
</div>
<div class="col-4 text-start">
<div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
    <i class="fa-solid fa-users"></i>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
<div class="card">
<div class="card-body p-3">
<div class="row">
<div class="col-8">
<div class="numbers">
<p class="text-sm mb-0 text-capitalize font-weight-bold">العملاء الفعلين</p>
<h5 class="font-weight-bolder mb-0">
{{real_clients}}
<!-- <span class="text-danger text-sm font-weight-bolder">-2%</span> -->
</h5>
</div>
</div>
<div class="col-4 text-start">
<div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
    <i class="fa-solid fa-person-circle-check"></i>
</div>
</div>
</div>
</div>
</div>
</div>

</div>


</div>



<div class="container-fluid py-4">

<div class="row mt-4">   
<div class="col-lg-6" style="height: 40dvh;">
<div class="card h-100 p-3">
<div class="overflow-hidden position-relative border-radius-lg bg-cover h-100" style="background-image: url('/img/index/departments/finance.jpg'); background-size: 100% 100%;">
    <router-link to="/ar/assets">
<span class="mask bg-gradient-dark"></span>
<div class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3">
<h5 class="text-white font-weight-bolder mb-4 pt-2">الإدارة المالية</h5>


</div>
    </router-link>
</div>

</div>
</div>
<div class="col-lg-6"  style="height: 40dvh;">
<div class="card h-100 p-3">
<div class="overflow-hidden position-relative border-radius-lg bg-cover h-100" style="background-image: url('/img/index/departments/hr.jpg'); background-size: 100% 100%;">
    <router-link to="/ar/single/department_hr">
<span class="mask bg-gradient-dark"></span>
<div class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3">
<h5 class="text-white font-weight-bolder mb-4 pt-2">إدارة الموارد البشرية</h5>


</div>
    </router-link>
</div>

</div>
</div>

</div>


</div>





<div class="row my-4"  style="justify-content: center;">
    <div class="col-lg-4 col-md-6 mb-md-0 mb-4" style="
    width: 25rem;
">
        <div class="card">
        <div class="card-header pb-0">
        <div class="row">
        <div class="col-lg-12 col-7" style="justify-content: center;display: flex;">
        <h6>ملفات البصمة المحدثة</h6>

        </div>

        </div>
        </div>
        <div class="card-body px-0 pb-2">
        <div class="table-responsive" style="
            height: 40dvh;justify-content: center;  scrollbar-width: thin;
            scrollbar-color: #6969dd69 #ffffff;
        ">



























        <div class="card-body p-3">
            <div class="timeline timeline-one-side" v-for="k in data.files" :key="k.id" >
                <div class="timeline-block mb-3">
                    <span class="timeline-step">
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

        </svg>
                    </span>
                    <div class="timeline-content">
                        <a :href="'/fingerprintsfile/'+k.file_name" class="text-dark text-sm font-weight-bold mb-0"><h4> ملف بصمة الموظفين</h4></a>
                        <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">{{k.created_at}}</p>
                    </div>
                </div>
        
            </div>
      
        </div>
        </div>
        </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-md-0 mb-4" style="display: flex;justify-content: center;">



    <div class="table-responsive" style="margin-block: 50%;overflow: hidden;     border-radius: 10px;">
    <router-link  to="/ar/sendmessage" style="text-decoration: none;text-transform: capitalize;font-family: sans-serif;font-size: 30px;font-weight: 700;padding: 20px 30px; color: black; background-color: aqua; box-shadow: 0 0 30px aqua; -webkit-box-reflect: below 0px linear-gradiant(transparent 10% , #ffffff55);">
    إرسال رسالة للإدارات

    </router-link>
    </div>


    </div>












    <div class="col-lg-4 col-md-6 mb-md-0 mb-4">
    
    <div class="card">
    <div class="card-header pb-0">
    <div class="row">
    <div class="col-lg-12 col-7" style="
        justify-content: center;
        display: flex;
    ">
    <h6>الرسائل</h6>

    </div>

    </div>
    </div>
    <div class="card-body px-0 pb-2">
    <div class="table-responsive" style="
        height: 40dvh;justify-content: center;
        scrollbar-color: #6969dd69 #ffffff;
        scrollbar-width: thin;
    ">



























    <div class="card-body p-3">
        <div class="timeline timeline-one-side" v-for="k2 in data.message" :key="k2.id">
            <div class="timeline-block mb-3">
                <span class="timeline-step">
                    <svg version="1.1" id="fi_668287" width="40" height="40" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
    <g style="opacity:0.08;">
        <path d="M129.051,512c-74.5,0-124.56-50.059-124.56-124.56V133.542c0-74.5,50.059-124.56,124.56-124.56h253.898
            c74.5,0,124.56,50.059,124.56,124.56V387.44c0,74.5-50.059,124.56-124.56,124.56H129.051z"></path>
    </g>
    <linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="-15.0449" y1="581.5254" x2="-15.0449" y2="637.5254" gradientTransform="matrix(8.9825 0 0 -8.9825 391.1404 5726.5439)">
        <stop offset="0" style="stop-color:#3FBD2D"></stop>
        <stop offset="1" style="stop-color:#87EA4A"></stop>
    </linearGradient>
    <path style="fill:url(#SVGID_1_);" d="M129.051,503.018c-74.5,0-124.56-50.059-124.56-124.56V124.56C4.491,50.059,54.55,0,129.051,0
        h253.898c74.5,0,124.56,50.059,124.56,124.56v253.898c0,74.5-50.059,124.56-124.56,124.56H129.051z"></path>
    <g style="opacity:0.16;">
        
            <linearGradient id="SVGID_2_" gradientUnits="userSpaceOnUse" x1="-15.0449" y1="581.5254" x2="-15.0449" y2="637.5254" gradientTransform="matrix(8.9825 0 0 -8.9825 391.1404 5726.5439)">
            <stop offset="0" style="stop-color:#000000"></stop>
            <stop offset="0.06" style="stop-color:#000000;stop-opacity:0"></stop>
        </linearGradient>
        <path style="fill:url(#SVGID_2_);" d="M382.949,0H129.051C54.55,0,4.491,50.059,4.491,124.56v253.898
            c0,74.5,50.059,124.56,124.56,124.56h253.898c74.5,0,124.56-50.059,124.56-124.56V124.56C507.509,50.059,457.45,0,382.949,0z
            M489.544,378.458c0,64.755-41.84,106.595-106.595,106.595H129.051c-64.755,0-106.595-41.84-106.595-106.595V124.56
            c0-64.755,41.84-106.595,106.595-106.595h253.898c64.755,0,106.595,41.84,106.595,106.595V378.458z"></path>
    </g>
    <g style="opacity:0.16;">
        <path d="M382.949,0H129.051C54.55,0,4.491,50.059,4.491,124.56v253.898c0,74.5,50.059,124.56,124.56,124.56h253.898
            c74.5,0,124.56-50.059,124.56-124.56V124.56C507.509,50.059,457.45,0,382.949,0z M498.526,378.458
            c0,69.129-46.448,115.577-115.577,115.577H129.051c-69.129,0-115.577-46.448-115.577-115.577V124.56
            c0-69.129,46.448-115.577,115.577-115.577h253.898c69.129,0,115.577,46.448,115.577,115.577V378.458z"></path>
    </g>
    <linearGradient id="SVGID_3_" gradientUnits="userSpaceOnUse" x1="-15.0449" y1="590.5256" x2="-15.0449" y2="628.5254" gradientTransform="matrix(8.9825 0 0 -8.9825 391.1404 5726.5439)">
        <stop offset="0" style="stop-color:#E5F6E2"></stop>
        <stop offset="1" style="stop-color:#FFFFFF"></stop>
    </linearGradient>
    <path style="fill:url(#SVGID_3_);" d="M256,80.842c-104.179,0-188.632,70.378-188.632,157.193
        c0,49.754,28.331,95.133,71.114,122.844c3.925,2.542,9.988,7.069,12.863,11.677c2.892,4.572,3.207,10.024,1.258,15.549
        c-1.904,5.515-5.389,10.797-9.189,15.791c-3.853,4.994-8.12,9.764-12.513,14.435l0,0c-0.494,0.494-0.781,1.249-0.656,1.994
        c0.207,1.213,1.365,2.03,2.578,1.814c15.405-2.416,30.316-6.8,44.472-13.617c8.336-4.087,16.537-9.279,23.507-15.944
        c2.201-2.111,5.192-3.072,8.165-2.425c15.055,3.252,30.774,5.075,47.032,5.075c104.179,0,188.632-70.378,188.632-157.193
        S360.179,80.842,256,80.842z"></path>

    </svg>
                </span>
                <div class="timeline-content">

                    <router-link :to="'/ar/message?id='+k2.id" class="text-dark text-sm font-weight-bold mb-0" v-if="k2.to == 2"> مرسل إلي: الموارد البشرية</router-link>
                  
                    <router-link :to="'/ar/message?id='+k2.id" class="text-dark text-sm font-weight-bold mb-0" v-if="k2.to == 3"> مرسل إلي: المالية</router-link>
                    <br>
                    <router-link :to="'/ar/message?id='+k2.id" class="text-dark text-sm font-weight-bold mb-0" > العنوان: {{ k2.subject }}</router-link>
                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">{{k2.created_at}}</p>
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
    user_type:false,
    data:{},
    loading:true,
    real_clients:''
}),

mounted(){
    
if(isEmpty(localStorage.getItem("access_token_agent")))
{
location.href="/login"
}
else{
  
        axios.post("https://erp.ersal.com.sa/api/auth/me?token="+localStorage.getItem("access_token_agent")).then(
    
        response=>
        {
            if(response.data.message.type==1){
              this.user_type=true  
            }
            else{
                location.href="/departments"
            }
        }
    
    )
    .catch(err => {
     location.href="/login"
 
})
axios.post("https://erp.ersal.com.sa/api/auth/displayemployees?token="+localStorage.getItem("access_token_agent")).then(
    
    response=>
    {
        this.data.count=response.data.message.employee.length
   
    }

)

axios.post("https://erp.ersal.com.sa/api/auth/displayfingerprintfiles?token="+localStorage.getItem("access_token_agent")).then(
    
    response=>
    {
        this.data.files=response.data.message
    }

)
axios.post("https://erp.ersal.com.sa/api/auth/showmessage?token="+localStorage.getItem("access_token_agent")).then(
    
    response=>
    {
        this.data.message=response.data.message
    }

)
axios.post("https://erp.ersal.com.sa/api/auth/DisplayclientsProfile?token="+localStorage.getItem("access_token_agent")).then(
    
    response=>
    {
        this.real_clients=response.data.message.length
    }

)
}
},
methods:{

}
}
</script>

<style lang="scss">
.avatar{
    img{width: 3rem;
        }
    }

</style>
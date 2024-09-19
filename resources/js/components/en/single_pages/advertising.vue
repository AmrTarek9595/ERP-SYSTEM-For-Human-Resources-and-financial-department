<template>
    <img src="/img/loading.gif" style="z-index:1;position: absolute;left: 40%; top:30%" v-if="loading">
    
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="admin" >
            <div class="alert alert-warning" role="alert" v-if="faildorsuccessmessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
                {{faildorsuccessmessage}}
            </div>
        <div v-if="!form">
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
        <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;"></a></li>
        <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Bills</li>
        </ol>
        <h6 class="font-weight-bolder mb-0"> ADS Bills</h6>
        </nav>
      
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
             ADS Bills Page 
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
            <h6 class="mb-0">Ads Bills Statement</h6>
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
         
                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Date</th>
                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"></th>
    
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
                <div class="d-flex px-2 py-1">
      
                <div class="d-flex flex-column justify-content-center">
                <h6 class="mb-0 text-sm">{{data.created_at}}</h6>
            
                </div>
                </div>
                </td>
         

    
    
            <td class="align-middle text-left">
                <a :href="'/ads/'+data.file_name">
            <span class="text-secondary text-xs font-weight-bold">
    <svg id="fi_14180779" enable-background="new 0 0 68 68" viewBox="0 0 68 68" width="40" height="40" xmlns="http://www.w3.org/2000/svg"><g><g><g><g><path d="m59.34719 18.5239v43.4695c0 1.79867-1.45811 3.25679-3.25678 3.25679h-40.39211c-1.79867 0-3.25678-1.45811-3.25678-3.25679v-55.98644c0-1.79867 1.45811-3.25678 3.25678-3.25678h27.87491z" fill="#fff"></path></g><g opacity=".5"><path d="m54.28842 13.46526v51.78493h1.80199c1.79855 0 3.25678-1.45811 3.25678-3.25679v-43.4695z" fill="#eaeaea"></path></g><g opacity=".5"><path d="m18.23828 2.75018h-2.53998c-1.79855 0-3.25678 1.4581-3.25678 3.25678v55.98644c0 1.79868 1.45824 3.25679 3.25678 3.25679h2.53998z" fill="#eaeaea"></path></g><g opacity=".5"><path d="m22.283 2.75h3.148v62.5h-3.148z" fill="#eaeaea"></path></g><g><path d="m59.34719 18.5239h-12.5172c-1.79867 0-3.25678-1.45811-3.25678-3.25678v-12.51694z" fill="#f33"></path></g></g><g><g><path d="m37.14392 44.33741v10.03232c0 1.27406-1.03283 2.30688-2.30688 2.30688h-24.18697c-1.10457 0-2-.89543-2-2v-10.6461c0-1.10457.89543-2 2-2h24.18697c1.27406.00001 2.30688 1.03284 2.30688 2.3069z" fill="#f33"></path></g><g><path d="m15.33981 42.03073v14.64568h-4.68974c-1.10457 0-2-.89543-2-2v-10.64568c0-1.10457.89543-2 2-2z" fill="#ef0a0a"></path></g><g><path d="m20 42.031h3.634v14.646h-3.634z" fill="#ef0a0a"></path></g><g fill="#fff"><path d="m17.90118 46.26758c.67285 0 1.19531.15869 1.56836.47559.37207.31689.55859.78125.55859 1.39258 0 .61182-.18652 1.0791-.55859 1.40137-.37305.32275-.89551.48389-1.56836.48389h-1.33496v1.85986c0 .06104-.02148.11377-.06641.1582-.04492.04492-.09766.06689-.1582.06689h-.67578c-.06152 0-.11426-.02197-.1582-.06689-.04492-.04443-.06738-.09717-.06738-.1582v-5.38818c0-.06104.02246-.11377.06738-.1582.04395-.04443.09668-.06689.1582-.06689h2.23535zm-1.33496 2.71094h1.29297c.31738 0 .57031-.06299.75879-.18799.18945-.125.28418-.34326.28418-.65479 0-.31104-.09473-.52637-.28418-.64648-.18848-.11914-.44141-.1792-.75879-.1792h-1.29297z"></path><path d="m23.22247 46.26758c.41113 0 .76855.0542 1.07129.1626s.55566.2627.75879.46289.3584.44189.46777.72559c.1084.28369.17285.60059.19531.95117.02246.41113.02246.82275 0 1.23438-.02246.3501-.08691.66699-.19531.95068-.10938.28369-.26367.52539-.46289.72559-.2002.2002-.44922.35449-.74707.46289s-.64648.1626-1.04688.1626h-2.10156c-.06152 0-.11426-.02197-.1582-.06689-.04492-.04443-.06738-.09717-.06738-.1582v-5.38818c0-.06104.02246-.11377.06738-.1582.04395-.04443.09668-.06689.1582-.06689h2.06055zm1.36719 2.30224c-.01074-.17822-.0459-.34326-.10449-.49658-.05762-.15283-.14453-.28613-.25781-.40039-.11426-.11377-.25781-.20264-.42969-.2666-.17285-.06396-.37793-.09619-.61719-.09619h-1.11816v3.75342h1.16016c.22754 0 .4248-.03223.5918-.09619.16699-.06348.30566-.15137.41699-.2627.11133-.11084.19629-.24463.25391-.40039.05859-.15527.09375-.32227.10449-.5.02245-.41162.02245-.82324-.00001-1.23438z"></path><path d="m30.59454 46.26758c.06152 0 .11426.02246.15918.06689.04395.04443.06641.09717.06641.1582v.59229c0 .06104-.02246.11426-.06641.15869-.04492.04443-.09766.06641-.15918.06641h-2.66016v1.61816h2.49414c.06055 0 .11328.02246.1582.06689.04395.04443.06641.09717.06641.1582v.59229c0 .06104-.02246.11426-.06641.15869-.04492.04443-.09766.06641-.1582.06641h-2.49414v1.91016c0 .06104-.02246.11377-.06641.1582-.04492.04492-.09766.06689-.15918.06689h-.67479c-.06152 0-.11426-.02197-.15918-.06689-.04395-.04443-.06641-.09717-.06641-.1582v-5.38818c0-.06104.02246-.11377.06641-.1582.04492-.04443.09766-.06689.15918-.06689h3.56054z"></path></g></g><g><path d="m44.28497 40.84473c-1.14355 0-2.41748-.54736-3.46143-1.59131-.54834-.54785-1.72021-3.09912-3.04199-6.3335-.4541-.11865-.92529-.22461-1.41113-.31396-1.97949-.36426-4.0957-.54736-6.04199-.62012-2.38574 2.61523-4.68359 4.44287-5.47754 4.73486-2.34961.86328-4.70313.14941-5.35645-1.62598 0 0 0 0 0-.00049-.33105-.90039-.14893-1.93799.49951-2.84668.57568-.80762 1.4751-1.46582 2.53174-1.854.73096-.26855 3.56494-.49561 6.92139-.4248.95752-1.09863 1.92529-2.33887 2.79199-3.67432.67969-1.04688 1.28223-2.14844 1.80566-3.22803-1.26904-3.59375-2.19629-6.54297-2.19629-7.21826 0-2.50439 1.48193-4.46631 3.37402-4.46631 1.88818 0 3.36719 1.96191 3.36719 4.46631 0 .79492-.81738 3.92139-2.39893 7.36279.95068 2.61133 2.0625 5.51855 3.08154 8.05518 3.36328 1.04297 5.73096 2.63379 6.31787 3.2207.79688.79688 1.33643 1.77246 1.51904 2.74707.20557 1.09766-.06641 2.11719-.74658 2.79736-.54832.54786-1.28123.81349-2.07762.81349zm-3.99463-7.09668c.90869 2.16309 1.64209 3.74219 1.95605 4.10059.98926.98877 2.24414 1.22412 2.70215.76807.28223-.28223.24316-.75635.19482-1.01416-.10742-.57422-.46045-1.19434-.96729-1.70166-.32762-.32765-1.76121-1.30128-3.88573-2.15284zm-18.91894.65674c.22461.60889 1.46582.9248 2.78955.43896.34912-.14551 1.74072-1.21289 3.4292-2.89258-2.29248.02734-4.00049.19141-4.37646.32031-.67139.24658-1.25195.66113-1.59131 1.13721-.15235.21289-.38672.62598-.25098.9961zm10.59228-4.32911c1.61279.10449 3.25293.28418 4.76904.56348.04883.00879.09766.01807.14648.02734-.64404-1.63867-1.29736-3.36279-1.91113-5.03564-.32861.5918-.6792 1.1792-1.05127 1.75244-.6079.93701-1.2705 1.84082-1.95312 2.69238zm3.25879-16.69384c-.64844 0-1.37402 1.05469-1.37402 2.46631.01904.52344.55566 2.27393 1.35156 4.57617.90967-2.31494 1.38037-4.16406 1.38965-4.57813 0-1.40967-.72168-2.46435-1.36719-2.46435z" fill="#f91c1c"></path></g></g><g><g><path d="m59.8894 18.01392c-.09521-.1004-15.63281-15.64783-15.823-15.81653-.15893-.14032-.39379-.19739-.49682-.19739h-27.86963c-2.21143 0-4.01025 1.79883-4.01025 4.01025v35.2749h-1.03955c-1.5166 0-2.75 1.2334-2.75 2.75v10.646c0 1.51611 1.2334 2.75 2.75 2.75h1.03955v4.56885c0 2.20557 1.79883 4 4.01025 4h40.38965c2.21143 0 4.01025-1.79443 4.01025-4v-43.46973c0-.1408-.07324-.37146-.21045-.51635zm-15.5664-13.44849 13.21387 13.21289h-10.70704c-1.38232 0-2.50684-1.12451-2.50684-2.50635v-10.70654zm-34.92285 50.11572v-10.646c0-.68945.56055-1.25 1.25-1.25h24.18701c.8584 0 1.55664.69824 1.55664 1.55664v10.03271c0 .8584-.69824 1.55664-1.55664 1.55664-8.15453 0-12.50928 0-24.18701 0-.68946.00001-1.25-.56053-1.25-1.24999zm49.1997 7.31885c0 1.37842-1.12598 2.5-2.51025 2.5h-40.38965c-1.38428 0-2.51025-1.12158-2.51025-2.5v-4.56885h21.64746c1.68555 0 3.05664-1.37109 3.05664-3.05664v-10.03271c0-1.68555-1.37109-3.05664-3.05664-3.05664h-21.64746v-35.27491c0-1.38428 1.12598-2.51025 2.51025-2.51025h27.12305v11.77197c0 2.20898 1.79736 4.00635 4.00684 4.00635h11.77002v42.72168z"></path></g></g></g></svg></span>
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
    
    <h6>Upload Ads File </h6>
    </div>
    <div class="card-body px-0 pt-0 pb-2">
    <div class="table-responsive p-0">
    <div class="formbold-main-wrapper">
    <!-- Author: FormBold Team -->
    <!-- Learn More: https://formbold.com -->
    <div class="formbold-form-wrapper">
    <form action="" method="POST" enctype= multipart/form-data>
      <div class="formbold-mb-5">
       
        

    
    
     
        
      </div>
    
      <div class="mb-6 pt-4">
        <label class="formbold-form-label formbold-form-label-2">
          File : (Accept files with .pdf only )
        </label>
    
        <div class="formbold-mb-5 formbold-file-input">
          <input type="file" name="file_name" id="custody_file" accept=".pdf" class="form-control" @change="selectFile"/>
         
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
          
                loading:false,
                file_name:'',
                faildorsuccessmessage:'',
             
             
       
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
        axios.post("https://erp.ersal.com.sa/api/auth/display_ad?token="+localStorage.getItem("access_token_agent")).then(
            
            response=>
            {
                if(response.data.status=="true")
            {
                       this.o=response.data.message
                
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
          
            selectFile:function(e){
               
               this.file_name=e.target.files[0]
               console.log(this.file_name)
               
           },
           uploadfiles:function(){
            this.loading=true
            let formdata=new FormData;
            formdata.append("file_name",this.file_name)

    
            axios.post("https://erp.ersal.com.sa/api/auth/insert_ad?token="+localStorage.getItem("access_token_agent"),formdata).then(
                response=>{
                    this.faildorsuccessmessage=response.data.message
                    location.reload()
                    this.loading=false
                    console.log(response.data.message)
                }
            )
        },
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
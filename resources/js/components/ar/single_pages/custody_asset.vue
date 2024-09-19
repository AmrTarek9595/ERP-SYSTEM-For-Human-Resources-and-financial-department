<template>

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="accountant" style="direction:rtl">
    
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">

    <li class="breadcrumb-item text-sm text-dark active" aria-current="page"> الأصول  / </li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page"> العهده المالية </li>
    </ol>
    <h6 class="font-weight-bolder mb-0">العهدة المالية</h6>
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

    
   
    <div class="row">
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
            <div class="card">
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-8">
                            <div class="numbers">
                                <p class="text-sm mb-0 text-capitalize font-weight-bold"> الحالي</p>
                                <h5 class="font-weight-bolder mb-0"> {{e.current}} </h5>
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
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
            <div class="card">
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-8">
                            <div class="numbers">
                                <p class="text-sm mb-0 text-capitalize font-weight-bold"> المرسل خلال الشهر</p>
                                <h5 class="font-weight-bolder mb-0"> {{e.total_amount_this_month}} </h5>
                            </div>
                        </div>
                        <div class="col-4 text-start">
                            <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                <i class="fa-solid fa-square-poll-vertical"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
            <div class="card">
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-8">
                            <div class="numbers">
                                <p class="text-sm mb-0 text-capitalize font-weight-bold"> إجمالي فواتير الشهر</p>
                                <h5 class="font-weight-bolder mb-0"> {{e.invoices}} </h5>
                            </div>
                        </div>
                        <div class="col-4 text-start">
                            <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                <i class="fa-solid fa-square-poll-vertical"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
    </div>
    <div class="container-fluid py-4">
        <div class="container">
    <div class="row" style="
    justify-content: center;
">    <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/ar/incomepermonth">
            <div class="serviceBox">
                <h3 class="title">العهد المرسلة</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-money-bill-trend-up"></i></span>
                </div>
            </div>
        </router-link>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/ar/supply">
            <div class="serviceBox">
                <h3 class="title">التموين</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-boxes-packing"></i></span>
                </div>
            </div>
        </router-link>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/ar/fac">
            <div class="serviceBox">
                <h3 class="title">المرافق</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-file-invoice"></i></span>
                </div>
            </div>
        </router-link>
        </div>
 
        <!-- <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/treasury/asset">
            <div class="serviceBox red">
                <h3 class="title">Treasury Assets</h3>
                
                <div class="service-icon">
                    <span><i class="fa-regular fa-gem"></i></span>
                </div>
            </div>
            </router-link>

        </div> -->
    </div>
</div>


</div>
    <!-- <div class="main-content position-relative bg-gray-100 max-height-vh-100 h-100 ps ps--active-y">


 
<div class="container-fluid py-4">
<div class="row">


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


<div class="col-12 col-xl-12">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Assets Statement</h6>
</div>
<div class="col-md-4 text-end">
<router-link  to="">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Invoice" data-bs-original-title="Add Invoice"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0" id="image_jpg">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Price </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">type</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">year</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">month</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">day</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Invoice</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
<span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
</td>
</tr>


<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
<span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
</td>
</tr>



<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
<span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
</td>
</tr>



<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
<span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
</td>
</tr>



<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
<span class="mb-0 text-sm"><svg id="fi_2306117"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m392 488h-272a48 48 0 0 1 -48-48v-368a48 48 0 0 1 48-48h224l96 96v320a48 48 0 0 1 -48 48z" fill="#cfd2fc"></path><path d="m72 360h368a0 0 0 0 1 0 0v80a48 48 0 0 1 -48 48h-272a48 48 0 0 1 -48-48v-80a0 0 0 0 1 0 0z" fill="#5153ff"></path><path d="m440 120h-48a48 48 0 0 1 -48-48v-48z" fill="#8690fa"></path><path d="m152 136h208v160h-208z" fill="#fff"></path><path d="m216 216 40 48 48-16 56 48h-208z" fill="#8690fa"></path><circle cx="288" cy="200" fill="#5153ff" r="16"></circle><g fill="#fff"><path d="m248 384h-16a8 8 0 0 0 -8 8v64a8 8 0 0 0 16 0v-24h8a24 24 0 0 0 0-48zm0 32h-8v-16h8a8 8 0 0 1 0 16z"></path><path d="m200 384a8 8 0 0 0 -8 8v48a8 8 0 0 1 -16 0 8 8 0 0 0 -16 0 24 24 0 0 0 48 0v-48a8 8 0 0 0 -8-8z"></path><path d="m344 416h-16a8 8 0 0 0 0 16h7.049c-2.252 9.217-8.236 16-15.049 16-8.673 0-16-10.991-16-24s7.327-24 16-24a10.71 10.71 0 0 1 4.589 1.057 8 8 0 0 0 6.822-14.473 26.6 26.6 0 0 0 -11.411-2.584c-17.645 0-32 17.944-32 40s14.355 40 32 40 32-17.944 32-40a8 8 0 0 0 -8-8z"></path></g></svg></span></a>
</td>
</tr>



<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">20</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Debit</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2023</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">23 </span>
</td>
<td class="align-middle text-left text-sm">
    <a href="!#">
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
</div> -->

    </main>
    </template>
    
    <script>

import { isEmpty } from 'lodash';

export default {
data: ()=>({
    accountant:false,
    e:{}
   
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

axios.post("https://erp.ersal.com.sa/api/auth/displayincomecustody?token="+localStorage.getItem("access_token_agent")).then(
    
        response=>
        {
            this.e.invoices=response.data.message.invoices;
            this.e.current=response.data.message.current;
            this.e.total_amount_this_month=response.data.message.total_amount_this_month;
            
            console.log(this.e.invoices)
        }
    )
}
}
    </script>
    
    <style lang="scss">
    .management{

    }
    table
    tr{
        svg{
            width: 30px;
        }
    }
    </style>
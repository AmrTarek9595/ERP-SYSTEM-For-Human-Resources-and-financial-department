<template>
<img src="/img/loading.gif" style="z-index:1;position: absolute;left: 40%; top:30%" v-if="loading">

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " v-if="hr">
        <div class="alert alert-warning" role="alert" v-if="requestMessage" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
{{requestMessage}}
</div>
    <div v-if="form">
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Employee</li>
    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Single Employee Page</li>
    </ol>
    <h6 class="font-weight-bolder mb-0">Emplyee</h6>
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
        <svg id="Layer_1" enable-background="new 0 0 512 512" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><linearGradient id="SVGID_1_" gradientTransform="matrix(1 0 0 -1 0 512.5)" gradientUnits="userSpaceOnUse" x1="256.05" x2="256.05" y1="512.45" y2=".45"><stop offset="0" stop-color="#f704fe"/><stop offset="1" stop-color="#24bce3"/></linearGradient><circle cx="256" cy="256" fill="url(#SVGID_1_)" r="256"/><g fill="#fffffe"><path d="m260.1 145.4c1.3-1.8 4.1-1.8 5.4 0 3.1 4.4 2.4 6.5 10.6 7.5 1.4.2 2.2.9 2.5 1.8h.6c0-3.3-.1-7.3-1.7-8.9-2.1-2.2-6.8.7-6.8-5.3 0-8.1-36.9-16.6-38.2 14.2h.6c.5-1 1.4-1.6 2.5-1.8 14-1.8 22.9-5 24.5-7.5z"/><path d="m243.9 237.4 2.9-17.7-.8-3.5c-1.3.5-2.8.1-3.7-1l-12.3-15.5-4.2 1c-5.3 1.2-17.7 5.4-17.7 17v19.9h35.8z"/><path d=""/><path d="m250.8 203.2-8.9-6.4-4.8 1.1 8.3 10.2z"/><path d="m195.1 252.8h122.1c3.9 0 7-3.1 7-7v-121.2c0-3.9-3.1-7-7-7h-122c-3.9 0-7 3.1-7 7v121.2c-.3 3.8 2.9 7 6.9 7zm6.5-35.4c0-11.3 8.5-20.1 22.7-23.4l15-3.5v-4.9c-4-4.2-6.4-9.8-6.4-16v-4.1c-4-1.2-6.8-4.9-6.8-9.3 0-39.1 47.4-34 51.1-17.9 8.8 1.8 8.7 10.8 8.7 18 0 4.4-2.9 8-6.8 9.2v4.1c0 6.2-2.5 11.8-6.4 16v4.9l15 3.5c14.2 3.3 22.7 12.1 22.7 23.4v23.1c0 1.8-1.4 3.3-3.3 3.3-20.1 0-40.2-.1-60.3 0h-.1c-13.9-.1-27.9 0-41.8 0-1.8 0-3.3-1.4-3.3-3.3z"/><path d="m252.9 222.8-2.3 14.6h10.9l-2.4-14.6z"/><path d="m256 198.9 10.1-7.4v-1c-6.2 3-14.1 3-20.2 0v1z"/><path d="m272.5 169.6v-10.7c-6.1-1.2-8.4-3.4-10.4-6.7-5.7 3.6-15.4 5.7-22.7 6.8v10.6c0 9.1 7.4 16.5 16.5 16.5 9.1.1 16.6-7.2 16.6-16.5z"/><path d="m259.2 216.1 1.2-4.9-4.4-3.8-4.2 3.8 1 4.9z"/><path d="m270 196.8-8.8 6.4 5.4 4.9 8.3-10.2z"/><path d="m266 215.9-.8 3.5 2.9 17.7h35.8v-19.9c0-11.6-12.4-15.8-17.7-17l-4.2-1-12.3 15.5c-.9 1.4-2.5 1.7-3.7 1.2z"/><path d="m356.4 326.5v-8.2c-4.5-1-6.4-2.7-8-5.1-4.6 2.7-11.9 4.3-17.5 5.2v8.1c0 7 5.7 12.8 12.8 12.8 6.8-.1 12.7-5.8 12.7-12.8z"/><path d="m346.5 306.5c1.3-1.8 4.1-1.8 5.4 0 2.4 3.5 1.8 5.1 8.1 5.8.8.1 1.4.4 1.9.9-.1-3.7-.1-6.3-3.6-6.3-1.8 0-3.3-1.4-3.3-3.3v-.7c0-5.5-27.7-12.4-29.6 10.2.5-.4 1.1-.7 1.7-.8 10.9-1.4 18.1-4.2 19.4-5.8z"/><path d="m219.1 283.4h-101.3c-2.9 0-5.3 2.4-5.3 5.3v100.6c0 2.9 2.4 5.3 5.3 5.3h101.3c2.9 0 5.3-2.4 5.3-5.3v-100.8c0-2.7-2.5-5.1-5.3-5.1zm-9.2 103.7h-82.9c-1.8 0-3.3-1.4-3.3-3.3v-18.8c0-9.5 7-16.8 18.9-19.5l11.7-2.7v-3.2c-3.2-3.5-5.2-8.1-5.2-13.2v-2.9c-3.2-1.2-5.5-4.3-5.5-7.9 0-32.1 38.7-28.5 42.5-15 7.2 1.8 7.2 9.1 7.2 15.1 0 3.6-2.3 6.8-5.5 7.9v2.9c0 5.1-2 9.8-5.2 13.2v3.2l11.7 2.7c11.8 2.7 18.9 10.1 18.9 19.5v18.9c-.1 1.6-1.6 3.1-3.3 3.1z"/><path d="m368 352-12.4-2.9c-1.9 2.1-8.3 9.5-9.9 10.9-.6.5-1.4.8-2.3.8-.9 0-1.7-.4-2.3-1.1l-9.5-10.5-12.4 2.9c-4.2 1-13.9 4.2-13.9 13.2v15.5h76.4v-15.5c.1-9.2-9.7-12.3-13.7-13.3z"/><path d="m336 344.2 7.5 8.3 7.5-8.3c-4.5 2-10.2 2-15 0z"/><path d="m394.2 283.4h-101.2c-2.9 0-5.3 2.4-5.3 5.3v100.6c0 2.9 2.4 5.3 5.3 5.3h101.3c2.9 0 5.3-2.4 5.3-5.3v-100.8c-.1-2.7-2.5-5.1-5.4-5.1zm-9.2 103.7h-82.9c-1.8 0-3.3-1.4-3.3-3.3v-18.8c0-9.5 7-16.8 18.9-19.5l11.7-2.7v-3.2c-3.2-3.5-5.2-8.1-5.2-13.2v-2.9c-3.2-1.2-5.5-4.3-5.5-7.9 0-32.1 38.7-28.5 42.5-15 7.2 1.8 7.2 9.1 7.2 15.1 0 3.6-2.3 6.8-5.5 7.9v2.9c0 5.1-2 9.8-5.2 13.2v3.2l11.7 2.7c11.8 2.7 18.9 10.1 18.9 19.5v18.9c-.1 1.6-1.4 3.1-3.3 3.1z"/><path d="m181.2 326.5v-8.2c-4.5-1-6.4-2.7-8-5.1-4.6 2.7-11.9 4.3-17.5 5.2v8.1c0 7 5.7 12.8 12.8 12.8 6.9-.1 12.7-5.8 12.7-12.8z"/><path d="m171.4 306.5c1.3-1.8 4.1-1.8 5.4 0 2.4 3.5 1.8 5.1 8.1 5.8.8.1 1.4.4 1.9.9-.1-3.8-.1-6.3-3.6-6.3-1.8 0-3.3-1.4-3.3-3.3v-.7c0-5.5-27.7-12.4-29.6 10.2.5-.4 1.1-.7 1.7-.8 10.9-1.4 18.1-4.2 19.4-5.8z"/><path d="m168.4 352.5 7.5-8.3c-4.6 2-10.4 2-15 0z"/><path d="m192.8 352-12.4-2.9-9.6 10.6c-.8.9-2 1.2-3.1 1-.7-.1-1.3-.5-1.8-1.1l-9.5-10.5-12.4 2.9c-4.2 1-13.9 4.2-13.9 13.2v15.5h76.3v-15.5c.2-9.1-9.5-12.2-13.6-13.2z"/><path d="m362.9 205.8v71.1h11.5v-71.1c0-14.5-11.8-26.4-26.4-26.4h-17.3v11.5h17.3c8.1 0 14.9 6.7 14.9 14.9z"/><path d="m149.1 276.8v-71.1c0-8.2 6.7-14.9 14.9-14.9h17.3v-11.5h-17.3c-14.5 0-26.4 11.8-26.4 26.4v71.1z"/></g></svg>
    </div>
    </div>
    <div class="col-8">
    <div class="numbers">
    
    <h5 class="font-weight-bolder mb-0">
        Employee
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


<div class="container-fluid">
<div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('/img/curved-images/curved0.jpg'); background-position-y: 50%;">
<span class="mask bg-gradient-primary opacity-6"></span>
</div>
<div class="card card-body blur shadow-blur mx-4 mt-n6 overflow-hidden">
<div class="row gx-4">


<div class="col-4 my-auto">
<div class="h-100">
<h5 class="mb-1">

    {{y.name}}
</h5>
<p class="mb-0 font-weight-bold text-sm" v-if="y.start_job_title !=null">
{{this.y.start_job_title}}
</p>
<p class="mb-0 font-weight-bold text-sm" v-if="y.end_job_title !='null'">
{{this.y.end_job_title}}
</p>
<h6 class="mb-1 font-weight-bold" v-if="y.status==0">
Current Employee
</h6>
<h6 class="mb-1 font-weight-bold" v-if="y.status==1">
Left Employee
</h6>
</div>
</div>
<div class="col-md-8 text-end">
<router-link  to="" :onclick="displayform">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Month" data-bs-original-title="Edit Profile"></i>
</router-link>
</div>
</div>
</div>
</div>
<div class="container-fluid py-4">
<div class="row">
<div class="col-12 col-xl-4">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Profile Information</h6>
</div>

</div>
</div>
<div class="card-body p-3">

<ul class="list-group">
<li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Full Name:</strong> &nbsp; {{y.name}}</li>
<li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mobile:</strong> &nbsp; {{y.phone_number}}</li>
<li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Email:</strong> &nbsp; {{ y.email }}</li>
<li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Location:</strong> &nbsp; {{y.location}}</li>

</ul>
</div>

</div>
</div>

<!-- Company Information -->
<div class="col-12 col-xl-4">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Company Information</h6>
</div>

</div>
</div>
<div class="card-body p-3">

<ul class="list-group" id="zip_file">
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Basic Salaray:</strong> &nbsp; {{y.basic_salary}} SAR</li>

<li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Start Date:</strong> &nbsp; {{y.start_date}}</li>
<li class="list-group-item border-0 ps-0 text-sm" v-if="y.end_date!='null'"><strong class="text-dark">End Date:</strong> &nbsp; {{y.end_date}}</li>
<li class="list-group-item border-0 ps-0 text-sm" v-if="y.requirements_paper != NULL"><strong class="text-dark">Requirement Paper:</strong> &nbsp;<a :href="'/hr/requirements_paper/'+y.requirements_paper"> <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg></a> 
</li>
<li class="list-group-item border-0 ps-0 pb-0"  v-if="y.custody_paper != NULL"><strong class="text-dark text-sm">Custody Paper:</strong> &nbsp;<a :href='"/hr/custody_paper/"+y.custody_paper'><svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg></a>
</li>

</ul>
</div>

</div>
</div>
<!-- Title Page -->
<div class="col-12 col-xl-4">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Employee Title</h6>
</div>

</div>
</div>
<div class="card-body p-3">

<ul class="list-group">
    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Start Title:</strong> &nbsp; {{y.start_job_title}}</li>
    <li class="list-group-item border-0 ps-0 pt-0 text-sm" v-if="y.end_job_title != 'null'"><strong class="text-dark">End Title:</strong> &nbsp; {{ y.end_job_title }}</li>
    <li class="list-group-item border-0 ps-0 pt-0 text-sm" v-if="y.status==0"><strong class="text-dark" >Current State:</strong> &nbsp; Current Employee</li>
    <li class="list-group-item border-0 ps-0 pt-0 text-sm" v-if="y.status==1"><strong class="text-dark" >Current State:</strong> &nbsp; Left Employee</li>

</ul>
</div>

</div>
</div>
</div>
<br>
<hr>
<div class="row">

<!-- Salary Statement -->
<!-- <div class="col-12 col-xl-12">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Company Information</h6>
</div>

</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Month</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Attendance days</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Absence</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">late hours</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Notes</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Salary</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">1/6/2024</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">30 day</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">0 days</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">2 Hours</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm"> </span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">200 SAR</span>
</td>
</tr>
</tbody>
</table>
</div>

</div>
</div> -->
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

<h6>Update Emplyee Data</h6>
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
     Emplyee Type:
    </label>
    <select class="formbold-form-input" name="type_emplyee" v-model="y.status" required>
        <option selected disabled>Select one</option>
        <option value="0">Current</option>
        <option value="1">Leave</option>
    </select>
    <label for="full name" class="formbold-form-label">
      Full Name:
    </label>
    <input
      type="text"
      name="name"
      id="name"
      placeholder="John Doe"
      value="{{y.name}}"
      class="formbold-form-input"
      v-model="y.name"
      
    />
    <label for="email" class="formbold-form-label">
      Email:
    </label>
    <input
      type="email"
      name="email"
      id="email"
      value="{{y.email}}"
      placeholder="Enter Employee email"
      class="formbold-form-input"
      v-model="y.email"
  
    />
    <label for="phone number" class="formbold-form-label">
     Phone Number:
    </label>
    <input
      type="number"
      name="phone_number"
      id="phone_number"
      placeholder="Phone Number"
      class="formbold-form-input"
      value="{{y.phone_number}}"
      v-model="y.phone_number"
    />
    <label for="email" class="formbold-form-label">
      Address:
    </label>
    <input
      type="text"
      name="address"
      id="address"
      placeholder="Address"
      class="formbold-form-input"
      value="{{y.location}}"
      v-model="y.location"
    />
    <label for="start date" class="formbold-form-label">
      Start Date:
    </label>
    <input
      type="text"
      name="start_date"
      id="start date"
      class="formbold-form-input"
      value="{{y.start_date}}"
      v-model="y.start_date"
    />
    <label for="End date" class="formbold-form-label">
      End Date:
    </label>
    <input
      type="text"
      name="end_date"
      id="end date"
      class="formbold-form-input"
      value="{{y.end_date}}"
      v-model="y.end_date"
      />
    <label for="start title" class="formbold-form-label">
      Start Title:
    </label>
    <input
      type="text"
      name="start_title"
      id="start_title"
      class="formbold-form-input"
      value="{{y.start_job_title}}"
      v-model="y.start_job_title"
    />
    <label for="end title" class="formbold-form-label">
      End Title:
    </label>
    <input
      type="text"
      name="end_title"
      id="end_title"
      class="formbold-form-input"
      value="{{y.end_job_title}}"
      v-model="y.end_job_title"
    />
    <label for="salary" class="formbold-form-label">
      Salary:
    </label>
    <input
      type="number"
      name="salary"
      id="salary"
      class="formbold-form-input"
      value="{{y.basic_salary}}"
      v-model="y.basic_salary"
    />
  </div>


    
    

           
         
   
      
      
      
  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
        Custody Paper: (Accept files with .zip .rar only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="custody_file" id="custody_file" accept=".zip,.rar" class="form-control"  @change="selectfile_1"/>
     
    </div>

   

   
  </div>


  <div class="mb-6 pt-4">
    <label class="formbold-form-label formbold-form-label-2">
        Requirement Paper: (Accept files with .zip .rar only )
    </label>

    <div class="formbold-mb-5 formbold-file-input">
      <input type="file" name="requirement_file" id="requirement_file" accept=".zip,.rar" class="form-control" @change="selectfile_2"/>

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
    y:{},
    form:true,
    id:'',
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
let params = new URL(document.location.toString()).searchParams;
  this.id = params.get("id");

  
axios.post("https://erp.ersal.com.sa/api/auth/displaycustomemployees?token="+localStorage.getItem("access_token_agent")+"&id="+this.id).then(
    
        response=>
        {
            this.y.name=response.data.message[0].name;
            this.y.start_job_title=response.data.message[0].start_job_title;
            this.y.end_job_title=response.data.message[0].end_job_title;
            this.y.status=response.data.message[0].status;
            this.y.phone_number=response.data.message[0].phone_number;
            this.y.email=response.data.message[0].email;
            this.y.location=response.data.message[0].location;
            this.y.start_date=response.data.message[0].start_date;
            this.y.end_date=response.data.message[0].end_date;
            this.y.basic_salary=response.data.message[0].basic_salary;
            this.y.end_job_title=response.data.message[0].end_job_title;
            this.y.requirements_paper=response.data.message[0].requirements_paper;
            this.y.custody_paper=response.data.message[0].custody_paper;


  
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
            this.y.custody_paper_updated=e.target.files[0]
            console.log(this.y.custody_paper_updated)
            
        },
        selectfile_2:function(e){
            this.y.requirements_paper_update= e.target.files[0]
            console.log( this.y.requirements_paper_update)
        },
        sendUpdatedData:function(){
            this.loading=true;
            let formdata=new FormData;
           
      

            if(this.y.requirements_paper_update !=null && this.y.custody_paper_updated !=null){
                formdata.append("status",this.y.status);
            formdata.append("name",this.y.name);
            formdata.append("phone_number",this.y.phone_number);
            formdata.append("email",this.y.email);
            formdata.append("location",this.y.location);
            formdata.append("start_date",this.y.start_date);
            formdata.append("end_date",this.y.end_date);
            formdata.append("basic_salary",this.y.basic_salary);
            formdata.append("start_job_title",this.y.start_job_title);
            formdata.append("end_job_title",this.y.end_job_title);
            formdata.append("requirements_paper",this.y.requirements_paper_update);
            formdata.append("custody_paper",this.y.custody_paper_updated);
                 axios.post("https://erp.ersal.com.sa/api/auth/updateemployee?token="+localStorage.getItem("access_token_agent")+"&id="+this.id,formdata).then(response=>
            {
            this.requestMessage=response.data.message
            this.loading=false;
            this.form=true
        })
            
            }
            else if(this.y.requirements_paper_update !=null && this.y.custody_paper_updated==null)
            {
                formdata.append("status",this.y.status);
            formdata.append("name",this.y.name);
            formdata.append("phone_number",this.y.phone_number);
            formdata.append("email",this.y.email);
            formdata.append("location",this.y.location);
            formdata.append("start_date",this.y.start_date);
            formdata.append("end_date",this.y.end_date);
            formdata.append("basic_salary",this.y.basic_salary);
            formdata.append("start_job_title",this.y.start_job_title);
            formdata.append("end_job_title",this.y.end_job_title);
            formdata.append("requirements_paper",this.y.requirements_paper_update);

                 axios.post("https://erp.ersal.com.sa/api/auth/updateemployee?token="+localStorage.getItem("access_token_agent")+"&id="+this.id,formdata).then(response=>
            {
                this.requestMessage=response.data.message
                this.loading=false;
                this.form=true
        })
            }
            else if(this.y.requirements_paper_update ==null && this.y.custody_paper_updated !=null){
                formdata.append("status",this.y.status);
            formdata.append("name",this.y.name);
            formdata.append("phone_number",this.y.phone_number);
            formdata.append("email",this.y.email);
            formdata.append("location",this.y.location);
            formdata.append("start_date",this.y.start_date);
            formdata.append("end_date",this.y.end_date);
            formdata.append("basic_salary",this.y.basic_salary);
            formdata.append("start_job_title",this.y.start_job_title);
            formdata.append("end_job_title",this.y.end_job_title);
            formdata.append("custody_paper",this.y.custody_paper_updated);
                 axios.post("https://erp.ersal.com.sa/api/auth/updateemployee?token="+localStorage.getItem("access_token_agent")+"&id="+this.id,formdata).then(response=>
            {
                this.requestMessage=response.data.message
                this.loading=false;
                this.form=true
        })
            }
            else{
                formdata.append("status",this.y.status);
            formdata.append("name",this.y.name);
            formdata.append("phone_number",this.y.phone_number);
            formdata.append("email",this.y.email);
            formdata.append("location",this.y.location);
            formdata.append("start_date",this.y.start_date);
            formdata.append("end_date",this.y.end_date);
            formdata.append("basic_salary",this.y.basic_salary);
            formdata.append("start_job_title",this.y.start_job_title);
            formdata.append("end_job_title",this.y.end_job_title);
           
                 axios.post("https://erp.ersal.com.sa/api/auth/updateemployee?token="+localStorage.getItem("access_token_agent")+"&id="+this.id,formdata).then(response=>
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
    .management{
 
  
    }
    #zip_file{
        svg{
            width: 30px;
        }
    }
    </style>
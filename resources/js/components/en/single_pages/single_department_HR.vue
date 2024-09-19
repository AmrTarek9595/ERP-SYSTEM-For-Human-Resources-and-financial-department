<template>

    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg" v-if="hr">
    
    
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>

    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Departments</li>
    </ol>
    <h6 class="font-weight-bolder mb-0">Human Resources</h6>
    </nav>

    </div>
    </nav>
    <div class="container-fluid py-4">
        <div class="container">
    <div class="row" style="justify-content: center;">
       

    </div>
</div>


</div>
    <div class="container-fluid py-4">
        <div class="container">
    <div class="row" style="justify-content: center;">
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/employee">
            <div class="serviceBox">
                <h3 class="title">Employees</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-users"></i></span>
                </div>
            </div>
            </router-link>
        </div>
      
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/payroll">
            <div class="serviceBox red">
                <h3 class="title">Payroll</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-hand-holding-dollar"></i></span>
                </div>
            </div>
            </router-link>

        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/fingerprint">
            <div class="serviceBox">
                <h3 class="title">Finger Print</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-fingerprint"></i></span>
                </div>
            </div>
        </router-link>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <router-link to="/newcomer">
            <div class="serviceBox">
                <h3 class="title">NewComer</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-person-circle-plus"></i></span>
                </div>
            </div>
            </router-link>
        </div>

    


    </div>
    <div class="row" style="justify-content: center;margin-top: 20px;">
        <div class="col-lg-6 col-md-4 col-sm-6">
            <router-link to="/execuses">
            <div class="serviceBox">
                <h3 class="title">Execuses</h3>
                
                <div class="service-icon">
                    <span><i class="fa-solid fa-paperclip"></i></span>
                </div>
            </div>
            </router-link>
        </div>

        <div class="col-lg-6 col-md-4 col-sm-6">
            <router-link to="/cv">
            <div class="serviceBox">
                <h3 class="title">CVs</h3>
                
                <div class="service-icon">
                    <span><i class="fa-regular fa-newspaper"></i></span>
                </div>
            </div>
            </router-link>
        </div>
    </div>
</div>


</div>

    
    <!-- <div class="main-content position-relative bg-gray-100 max-height-vh-100 h-100 ps ps--active-y" id="zip_file">



<div class="container-fluid py-4">

<br>
<hr>
<div class="row">


<div class="col-12 col-xl-12">
<div class="card h-100">
<div class="card-header pb-0 p-3">
<div class="row">
<div class="col-md-8 d-flex align-items-center">
<h6 class="mb-0">Employee Statement</h6>
</div>
<div class="col-md-4 text-end">
<router-link  to="">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Invoice" data-bs-original-title="Add Invoice"></i>
</router-link>
</div>
</div>
</div>
<div class="card-body p-3">

    <table class="table align-items-center mb-0">
<thead>
<tr>

<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Name </th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Job Title</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">start date</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">end date</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Salary</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Custody Paper</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Requirements Paper</th>
</tr>
</thead>
<tbody>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">Ahmed</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Senior Social Media</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">100 SAR </span>
</td>
<td class="align-middle text-left text-sm">
    <router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>




<td class="align-middle text-left text-sm">
<router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">Ahmed</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Senior Social Media</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">100 SAR </span>
</td>
<td class="align-middle text-left text-sm">
    <router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>

<td class="align-middle text-left text-sm">
<router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>
</tr>

<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">Ahmed</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Senior Social Media</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">100 SAR </span>
</td>
<td class="align-middle text-left text-sm">
    <router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>
<td class="align-middle text-left text-sm">
<router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2 py-1">

<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">Ahmed</h6>
</div>
</div>
</td>
<td>
<p class="text-xs font-weight-bold mb-0">Senior Social Media</p>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">1/6/2024</span>
</td>
<td class="align-middle text-left text-sm">
<span class="mb-0 text-sm">100 SAR </span>
</td>
<td class="align-middle text-left text-sm">
    <router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
</td>

<td class="align-middle text-left text-sm">
<router-link to="!#">
<span class="mb-0 text-sm">

    <svg id="fi_9496565" enable-background="new 0 0 512 512"  viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g><g clip-rule="evenodd" fill-rule="evenodd"><path d="m168.579 0h173.408l153.07 153.07v293.997c0 35.729-29.204 64.933-64.933 64.933h-261.545c-35.7 0-64.903-29.203-64.903-64.933v-382.164c0-35.699 29.203-64.903 64.903-64.903z" fill="#008bf5"></path><path d="m341.987 0 153.07 153.07h-136.566c-9.101 0-16.504-7.433-16.504-16.504z" fill="#006fc4"></path><path d="m31.193 218.003h352.638c7.842 0 14.251 6.408 14.251 14.251v129.368c0 7.842-6.408 14.28-14.251 14.28h-352.638c-7.842 0-14.251-6.438-14.251-14.28v-129.368c.001-7.842 6.409-14.251 14.251-14.251z" fill="#006fc4"></path></g><path d="m180.27 341.227c0 4.566-3.701 8.267-8.267 8.267h-53.199c-2.979 0-5.728-1.603-7.195-4.196s-1.425-5.774.109-8.328l45.675-76.025h-38.589c-4.566 0-8.266-3.701-8.266-8.267s3.701-8.266 8.266-8.266h53.199c2.979 0 5.728 1.603 7.195 4.196s1.425 5.774-.109 8.328l-45.675 76.025h38.589c4.566-.001 8.267 3.7 8.267 8.266zm124.217-61.949v1.141c0 19.225-15.641 34.865-34.866 34.865h-18.332v25.942c0 4.566-3.701 8.267-8.266 8.267s-8.266-3.701-8.266-8.267v-34.208-10.739-43.601c0-4.566 3.701-8.266 8.266-8.266h26.599c19.225 0 34.865 15.641 34.865 34.866zm-16.533 0c0-10.109-8.224-18.333-18.333-18.333h-18.332v35.334 2.473h18.332c10.109 0 18.333-8.224 18.333-18.332zm-78.993-34.866c-4.566 0-8.266 3.701-8.266 8.266v88.548c0 4.566 3.701 8.267 8.266 8.267 4.566 0 8.266-3.701 8.266-8.267v-88.548c0-4.565-3.7-8.266-8.266-8.266z" fill="#fff"></path></g></svg>
</span>
</router-link>
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
    hr:false,
   
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
}
}
    </script>
    
    <style lang="scss">
    #zip_file{
        svg{
            width: 30px;
        }
    }
    </style>
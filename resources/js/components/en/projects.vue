<template>

<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">


    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
<div class="container-fluid py-1 px-3">
<nav aria-label="breadcrumb">
<ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
<li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
<li class="breadcrumb-item text-sm text-dark active" aria-current="page">Projects</li>
</ol>
<h6 class="font-weight-bolder mb-0">Projects</h6>
</nav>
<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
<div class="ms-md-auto pe-md-3 d-flex align-items-center">
<div class="input-group">
<span class="input-group-text text-body"><i class="fa-solid fa-magnifying-glass"></i></span>
<input type="text" class="form-control" placeholder="Type here...">
</div>
</div>
<ul class="navbar-nav  justify-content-end">
<li class="nav-item d-flex align-items-center">
<a class="btn btn-outline-primary btn-sm mb-0 me-3" target="_blank" href="https://www.creative-tim.com/builder?ref=navbar-soft-ui-dashboard">Online Employee</a>
</li>
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
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" ><path d="m50 25a18 18 0 1 0 -27.712 15.157 5.734 5.734 0 0 1 2.712 4.802v4.041a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3v-3.958a5.891 5.891 0 0 1 2.77-4.922 17.984 17.984 0 0 0 8.23-15.12z" fill="#e39d10"/><path d="m27 58a3 3 0 0 0 3 3h4a3 3 0 0 0 3-3v-6h-10z" fill="#ebebeb"/><path d="m56.193 14.421 3.144-2.358-3.6-4.8-3.144 2.358a2 2 0 0 1 -3.179-1.883l.555-3.889-5.94-.849-.555 3.889a2 2 0 0 1 -3.58.918l-2.357-3.144-4.8 3.6 2.357 3.144a2 2 0 0 1 -1.883 3.179l-3.889-.555-.849 5.94 3.89.555a2 2 0 0 1 .917 3.58l-3.143 2.358 3.6 4.8 3.143-2.357a2 2 0 0 1 3.18 1.883l-.56 3.888 5.94.849.56-3.89a2 2 0 0 1 3.58-.917l2.358 3.143 4.8-3.6-2.359-3.143a2 2 0 0 1 1.883-3.18l3.889.556.849-5.94-3.889-.556a2 2 0 0 1 -.918-3.579zm-11.456 11.842a7 7 0 1 1 7-7 7 7 0 0 1 -7 7z" fill="#10bde0"/><path d="m22.288 40.157a18.049 18.049 0 0 1 -2.464-1.908 4.992 4.992 0 1 1 -4.824-6.249c.153 0 .3.032.446.045a17.986 17.986 0 0 1 -1.436-7.045h-1.273l-.691 3.287a1 1 0 0 1 -1.546.618l-2.763-1.905-3 3 1.9 2.763a1 1 0 0 1 -.618 1.546l-3.282.691v4l3.286.691a1 1 0 0 1 .618 1.546l-1.904 2.763 3 3 2.763-1.9a1 1 0 0 1 1.547.618l.69 3.282h4l.69-3.287a1 1 0 0 1 1.547-.618l2.763 1.905 3.139-3.139a5.822 5.822 0 0 0 -2.588-3.704z" fill="#c9dfff"/><path d="m61.142 17.566-3.89-.555a1 1 0 0 1 -.459-1.79l3.144-2.358a1 1 0 0 0 .2-1.4l-3.6-4.8a1 1 0 0 0 -1.4-.2l-3.143 2.358a1 1 0 0 1 -1.594-.941l.556-3.89a1 1 0 0 0 -.849-1.132l-5.936-.848a1 1 0 0 0 -1.132.848l-.556 3.89a1 1 0 0 1 -1.79.459l-2.357-3.144a1 1 0 0 0 -1.4-.2l-3.005 2.255a19.347 19.347 0 0 0 -4.09 0 19 19 0 0 0 -16.753 17.037c-.027.283-.037.564-.051.845h-.3a1 1 0 0 0 -.978.8l-.691 3.286-2.768-1.909a1 1 0 0 0 -1.275.116l-3 3a1 1 0 0 0 -.116 1.274l1.9 2.763-3.287.691a1 1 0 0 0 -.786.979v4a1 1 0 0 0 .794.979l3.287.691-1.9 2.763a1 1 0 0 0 .116 1.274l3 3a1 1 0 0 0 1.275.116l2.763-1.905.691 3.287a1 1 0 0 0 .978.8h4a1 1 0 0 0 .979-.794l.691-3.287 2.763 1.9a1 1 0 0 0 1.274-.116l1.553-1.558v2.85a3.987 3.987 0 0 0 2 3.444v5.556a4 4 0 0 0 4 4h4a4 4 0 0 0 4-4v-5.556a3.987 3.987 0 0 0 2-3.444v-3.958a4.9 4.9 0 0 1 2.313-4.082 19.185 19.185 0 0 0 2.354-1.8l-1.334-1.49a17.02 17.02 0 0 1 -2.107 1.611 6.888 6.888 0 0 0 -3.226 5.761v3.958a2 2 0 0 1 -2 2h-8a2 2 0 0 1 -2-2v-4.041a6.728 6.728 0 0 0 -3.172-5.644 16.949 16.949 0 0 1 8.957-31.3 1.09 1.09 0 0 0 -.039.109 1 1 0 0 0 .191.741l2.357 3.143a.979.979 0 0 1 .06 1.11.994.994 0 0 1 -1 .481l-3.89-.556a1 1 0 0 0 -1.132.849l-.849 5.939a1 1 0 0 0 .849 1.132l3.89.556a1 1 0 0 1 .459 1.79l-3.143 2.357a1 1 0 0 0 -.2 1.4l3.6 4.8a1 1 0 0 0 1.4.2l3.144-2.357a1 1 0 0 1 1.589.941l-.555 3.89a1 1 0 0 0 .848 1.132l5.94.849a1.112 1.112 0 0 0 .141.009 1 1 0 0 0 .991-.858l.555-3.89a1 1 0 0 1 1.79-.459l2.358 3.143a1 1 0 0 0 1.4.2l4.8-3.6a1 1 0 0 0 .2-1.4l-2.357-3.143a.983.983 0 0 1 -.06-1.11.971.971 0 0 1 1-.48l3.89.555a1 1 0 0 0 1.132-.848l.848-5.94a1 1 0 0 0 -.848-1.132zm-46.368 15.434a18.937 18.937 0 0 0 3.712 5.346 3.994 3.994 0 1 1 -3.75-5.346zm19.226 27h-4a2 2 0 0 1 -2-2v-1h8v1a2 2 0 0 1 -2 2zm2-7v2h-8v-2zm-12.237-9.441-2.145 2.141-2.077-1.432a2 2 0 0 0 -3.092 1.235l-.524 2.497h-2.377l-.524-2.493a2 2 0 0 0 -3.092-1.235l-2.078 1.428-1.822-1.818 1.431-2.076a2 2 0 0 0 -1.234-3.093l-2.493-.525v-2.376l2.493-.525a2 2 0 0 0 1.235-3.087l-1.432-2.082 1.822-1.818 2.079 1.432a2 2 0 0 0 3.091-1.236l.175-.832a19.04 19.04 0 0 0 .793 3.391 6 6 0 1 0 6.047 8.7 18.905 18.905 0 0 0 1.709 1.245 4.881 4.881 0 0 1 2.015 2.559zm35.537-20.195-2.9-.414a3 3 0 0 0 -2.824 4.77l1.757 2.343-3.2 2.4-1.758-2.342a3 3 0 0 0 -5.37 1.375l-.405 2.904-3.959-.566.414-2.9a3 3 0 0 0 -4.77-2.825l-2.343 1.757-2.4-3.2 2.342-1.758a3 3 0 0 0 -1.375-5.37l-2.9-.414.566-3.959 2.9.414a3 3 0 0 0 2.825-4.77l-1.763-2.345 3.2-2.4 1.758 2.343a3 3 0 0 0 5.37-1.375l.414-2.9 3.959.565-.414 2.9a3 3 0 0 0 4.77 2.824l2.343-1.757 2.4 3.2-2.343 1.758a3 3 0 0 0 1.375 5.37l2.9.414z"/><path d="m44.736 11.264a8 8 0 1 0 8 8 8.009 8.009 0 0 0 -8-8zm0 14a6 6 0 1 1 6-6 6.007 6.007 0 0 1 -6 6z"/><path d="m31 46h2v3h-2z"/><path d="m27.626 36.179a12 12 0 0 1 -2.026-21.333l-1.069-1.692a14 14 0 0 0 2.369 24.886 6.384 6.384 0 0 1 4.1 5.96h2a8.367 8.367 0 0 0 -5.374-7.821z"/><path d="m51 39h7v2h-7z"/><path d="m52 43.595h2v7.81h-2z" transform="matrix(.6401097 -.76828352 .76828352 .6401097 -17.419 57.814)"/><path d="m45 47h2v7h-2z"/><path d="m2.877 18h8.246v1.999h-8.246z" transform="matrix(.97014353 -.2425315 .2425315 .97014353 -4.399 2.265)"/><path d="m7.5 6.199h1.999v8.602h-1.999z" transform="matrix(.58124277 -.8137302 .8137302 .58124277 -4.985 11.314)"/><path d="m13.978 1.871h2v8.257h-2z" transform="matrix(.96884738 -.24765854 .24765854 .96884738 -1.019 3.896)"/></svg>
</div>
</div>
<div class="col-8">
<div class="numbers">

<h5 class="font-weight-bolder mb-0">
    projects
<!-- <span class="text-success text-sm font-weight-bolder">+5%</span> -->
</h5>
</div>
</div>

</div>
</div>
</div>
</div>
</div>


<div class="container-fluid py-4">
<div class="col-12">
<div class="card mb-4">
    


<div class="card-header pb-0">
<h6>Projects table</h6>
<router-link  to="">
<i class="fa-solid fa-plus text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add Project" data-bs-original-title="Add Project" style="
    /* background-color: beige; */
    width: 31px;
    transform: scale(1.5);
    color: black !important;
"></i>
</router-link>
</div>

<div class="card-body px-0 pt-0 pb-2">
    
<div class="table-responsive p-0">
    
<table class="table align-items-center justify-content-center mb-0">
    
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Project</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Budget</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Status</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">Completion</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">View</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-spotify.svg" class="avatar avatar-sm rounded-circle me-2" alt="spotify">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Spotify</h6>
</div>
</div>
</td>
<td>
<p class="text-sm font-weight-bold mb-0">$2,500</p>
</td>
<td>
<span class="text-xs font-weight-bold">working</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">60%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-invision.svg" class="avatar avatar-sm rounded-circle me-2" alt="invision">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Invision</h6>
</div>
</div>
</td>
<td>
<p class="text-sm font-weight-bold mb-0">$5,000</p>
</td>
<td>
<span class="text-xs font-weight-bold">done</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">100%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-jira.svg" class="avatar avatar-sm rounded-circle me-2" alt="jira">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Jira</h6>
</div>
</div>
</td>
<td>
<p class="text-sm font-weight-bold mb-0">$3,400</p>
</td>
<td>
<span class="text-xs font-weight-bold">canceled</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">30%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="30" style="width: 30%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-slack.svg" class="avatar avatar-sm rounded-circle me-2" alt="slack">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Slack</h6>
</div>
</div>

</td>
<td>
<p class="text-sm font-weight-bold mb-0">$1,000</p>
</td>
<td>
<span class="text-xs font-weight-bold">canceled</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">0%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0" style="width: 0%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-webdev.svg" class="avatar avatar-sm rounded-circle me-2" alt="webdev">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Webdev</h6>
</div>
</div>
</td>
<td>
<p class="text-sm font-weight-bold mb-0">$14,000</p>
</td>
<td>
<span class="text-xs font-weight-bold">working</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">80%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="80" style="width: 80%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
<tr>
<td>
<div class="d-flex px-2">
<div>
<img src=" /img/small-logos/logo-xd.svg" class="avatar avatar-sm rounded-circle me-2" alt="xd">
</div>
<div class="my-auto">
<h6 class="mb-0 text-sm">Adobe XD</h6>
</div>
</div>
</td>
<td>
<p class="text-sm font-weight-bold mb-0">$2,300</p>
</td>
<td>
<span class="text-xs font-weight-bold">done</span>
</td>
<td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">100%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
</div>
</div>
</div>
</td>
<td class="align-middle text-center">
<span class="me-2 text-xs font-weight-bold"><router-link to="/single/project" class="btn btn-outline-primary btn-sm mb-0 me-3">View Profile</router-link></span>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</main>
</template>

<script>
export default {

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
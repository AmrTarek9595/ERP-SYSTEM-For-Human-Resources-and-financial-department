require("./bootstrap");

import { createApp } from "vue";
import { createRouter, createWebHistory,useRoute } from "vue-router";




// layout
import Layout from "./components/layout.vue";
import HOME from "./components/en/home.vue";


import DEPARTMENTS from "./components/en/departments.vue";
// start HR departments
import SINGLE_DEPARTMENT_HR from "./components/en/single_pages/single_department_HR.vue";
import EMPLOYEE from "./components/en/employee.vue";
import SINGLE_EMPLOYEE from "./components/en/single_pages/single_employee.vue";
// payroll Link
import PAYROLL from "./components/en/payroll.vue";
// fingerprint
import FINGERPRINT from "./components/en/fingerprint.vue";
// NEWCOMER
import NEWCOMER from "./components/en/newcomer.vue";

//CVS FROM HR 
import CVS from "./components/en/single_pages/cvs.vue";

// end HR Department

// financial departments
import ASSETS from "./components/en/assets.vue";

import REVIEW_FINGERPRINT from "./components/en/fingerprintforaccountant.vue";

import CUSTODY_ASSET from "./components/en/single_pages/custody_asset.vue";

import SUPPLY from "./components/en/supply.vue";
import INCOMEPERMONTH from "./components/en/single_pages/incomepermonth.vue";


import FACILITIES from "./components/en/facilities.vue";
import STATIC_ASSET from "./components/en/single_pages/static_asset.vue";

import ADVERTISING from "./components/en/single_pages/advertising.vue";

// end financial section




// import TREASURY_ASSET from "./components/en/single_pages/treasury_assets.vue";
// Clients section 
import CLIENTS from "./components/en/clients.vue";

import SINGLE_CLIENT from "./components/en/single_pages/single_client.vue";
// end clients section

import PROJECTS from "./components/en/projects.vue";
import SINGLE_PROJECTS from "./components/en/single_pages/single_project.vue";



import DISPLAYMESSAGEFROM from "./components/en/single_pages/messages.vue";
import SENDMESSAGE from "./components/en/single_pages/sendmessage.vue";

import EXECUSE from "./components/en/single_pages/execuse.vue";

import LOGIN from "./components/auth/login.vue";
import REGISTER from "./components/auth/register.vue";

/**
 * 
 * ARABIC ROUTES
 * 
 * 
 */

import AR_HOME from "./components/ar/home.vue";


import AR_DEPARTMENTS from "./components/ar/departments.vue";
// start HR departments
import AR_SINGLE_DEPARTMENT_HR from "./components/ar/single_pages/single_department_HR.vue";
import AR_EMPLOYEE from "./components/ar/employee.vue";
import AR_SINGLE_EMPLOYEE from "./components/ar/single_pages/single_employee.vue";
// payroll Link
import AR_PAYROLL from "./components/ar/payroll.vue";
// fingerprint
import AR_FINGERPRINT from "./components/ar/fingerprint.vue";
// NEWCOMER
import AR_NEWCOMER from "./components/ar/newcomer.vue";
import AR_CVS from "./components/ar/single_pages/cvs.vue";

// end HR Department

// financial departments
import AR_ASSETS from "./components/ar/assets.vue";

import AR_REVIEW_FINGERPRINT from "./components/ar/fingerprintforaccountant.vue";

import AR_CUSTODY_ASSET from "./components/ar/single_pages/custody_asset.vue";

import AR_SUPPLY from "./components/ar/supply.vue";
import AR_INCOMEPERMONTH from "./components/ar/single_pages/incomepermonth.vue";


import AR_FACILITIES from "./components/ar/facilities.vue";
import AR_STATIC_ASSET from "./components/ar/single_pages/static_asset.vue";
// ADVERTISING PAYMENT 
import AR_ADVERTISING from "./components/ar/single_pages/advertising.vue";


// end financial section




// import TREASURY_ASSET from "./components/ar/single_pages/treasury_assets.vue";
// Clients section 
import AR_CLIENTS from "./components/ar/clients.vue";

import AR_SINGLE_CLIENT from "./components/ar/single_pages/single_client.vue";
// end clients section

import AR_PROJECTS from "./components/ar/projects.vue";
import AR_SINGLE_PROJECTS from "./components/ar/single_pages/single_project.vue";



import AR_DISPLAYMESSAGEFROM from "./components/ar/single_pages/messages.vue";
import AR_SENDMESSAGE from "./components/ar/single_pages/sendmessage.vue";

import AR_EXECUSE from "./components/ar/single_pages/execuse.vue";




const router = createRouter({
  
    history: createWebHistory(),
    routes: [
                {
                    path: "/",
                    component: HOME,
                    meta: { title: "Home" },
                }, 
                // for Owner
                 {
                    path: "/message",
                    component: DISPLAYMESSAGEFROM,
                    meta: { title: "message" },
                }, // for Owner
                 {
                    path: "/sendmessage",
                    component: SENDMESSAGE,
                    meta: { title: "message" },
                }, 
                // display departments
                {
                    path: "/departments",
                    component: DEPARTMENTS,
                    meta: { title: "Departments" },
                }, 
                // hr departments
                {
                    path: "/single/department_hr",
                    component: SINGLE_DEPARTMENT_HR,
                    meta: { title: "Departments" },
                }, 
                {
                    path: "/payroll",
                    component: PAYROLL,
                    meta: { title: "PAYROLL" },
                },
                {
                    path: "/fingerprint",
                    component: FINGERPRINT,
                    meta: { title: "fingerprint" },
                },
                {
                    path: "/cv",
                    component: CVS,
                    meta: { title: "CVS" },
                },
                {
                    path: "/newcomer",
                    component: NEWCOMER,
                    meta: { title: "newcomer" },
                },

                
                {
                    path: "/clients",
                    component: CLIENTS,
                    meta: { title: "Clients" },
                },

                
                {
                    path: "/single/client",
                    component: SINGLE_CLIENT,
                    meta: { title: "SingleClients" },
                },
                {
                    path: "/projects",
                    component: PROJECTS,
                    meta: { title: "projects" },
                },{
                    path: "/single/project",
                    component: SINGLE_PROJECTS,
                    meta: { title: "projects" },
                },
                
                
                {
                    path: "/employee",
                    component: EMPLOYEE,
                    meta: { title: "employee" },
                },
                {
                    path: "/execuses",
                    component: EXECUSE,
                    meta: { title: "employee" },
                },
                {
                    path: "/single/emloyee",
                    component: SINGLE_EMPLOYEE,
                    meta: { title: "employee" },
                },
                // financial department
                
                {
                    path: "/assets",
                    component: ASSETS,
                    meta: { title: "assets" },
                },
                {
                    path: "/fingerprintforaccountant",
                    component: REVIEW_FINGERPRINT,
                    meta: { title: "Fingerprint for accountant" },
                },
                {
                    path: "/custody/asset",
                    component: CUSTODY_ASSET,
                    meta: { title: "assets" },
                }, {
                    path: "/incomepermonth",
                    component: INCOMEPERMONTH,
                    meta: { title: "assets" },
                },
                {
                    path: "/supply",
                    component: SUPPLY,
                    meta: { title: "supply" },
                },
                {
                    path: "/fac",
                    component: FACILITIES,
                    meta: { title: "facilities" },
                },
                {
                    path: "/static/asset",
                    component: STATIC_ASSET,
                    meta: { title: "assets" },
                },
                {
                    path: "/advertising",
                    component: ADVERTISING,
                    meta: { title: "advertising" },
                },

                    /**
                     * 
                     * Arabic Routes
                     * 
                     * 
                     * 
                     * 
                     */

                {
                    path: "/ar",
                    component: AR_HOME,
                    meta: { title: "Home" },
                }, 
                // for Owner
                 {
                    path: "/ar/message",
                    component: AR_DISPLAYMESSAGEFROM,
                    meta: { title: "message" },
                }, // for Owner
                 {
                    path: "/ar/sendmessage",
                    component: AR_SENDMESSAGE,
                    meta: { title: "message" },
                }, 
                // display departments
                {
                    path: "/ar/departments",
                    component: AR_DEPARTMENTS,
                    meta: { title: "Departments" },
                }, 
                // hr departments
                {
                    path: "/ar/single/department_hr",
                    component: AR_SINGLE_DEPARTMENT_HR,
                    meta: { title: "Departments" },
                }, 
                {
                    path: "/ar/payroll",
                    component: AR_PAYROLL,
                    meta: { title: "PAYROLL" },
                },
                {
                    path: "/ar/fingerprint",
                    component: AR_FINGERPRINT,
                    meta: { title: "fingerprint" },
                },
                {
                    path: "/ar/newcomer",
                    component: AR_NEWCOMER,
                    meta: { title: "newcomer" },
                },
                {
                    path: "/ar/cv",
                    component: AR_CVS,
                    meta: { title: "CVS" },
                },
                
                {
                    path: "/ar/clients",
                    component: AR_CLIENTS,
                    meta: { title: "Clients" },
                },

                
                {
                    path: "/ar/single/client",
                    component: AR_SINGLE_CLIENT,
                    meta: { title: "SingleClients" },
                },
                {
                    path: "/ar/projects",
                    component: AR_PROJECTS,
                    meta: { title: "projects" },
                },{
                    path: "/ar/single/project",
                    component: AR_SINGLE_PROJECTS,
                    meta: { title: "projects" },
                },
                
                
                {
                    path: "/ar/employee",
                    component: AR_EMPLOYEE,
                    meta: { title: "employee" },
                },
                {
                    path: "/ar/execuses",
                    component: AR_EXECUSE,
                    meta: { title: "employee" },
                },
                {
                    path: "/ar/single/emloyee",
                    component: AR_SINGLE_EMPLOYEE,
                    meta: { title: "employee" },
                },
                // financial department
                
                {
                    path: "/ar/assets",
                    component: AR_ASSETS,
                    meta: { title: "assets" },
                },
                {
                    path: "/ar/fingerprintforaccountant",
                    component: AR_REVIEW_FINGERPRINT,
                    meta: { title: "Fingerprint for accountant" },
                },
                {
                    path: "/ar/custody/asset",
                    component: AR_CUSTODY_ASSET,
                    meta: { title: "assets" },
                }, {
                    path: "/ar/incomepermonth",
                    component: AR_INCOMEPERMONTH,
                    meta: { title: "assets" },
                },
                {
                    path: "/ar/supply",
                    component: AR_SUPPLY,
                    meta: { title: "supply" },
                },
                {
                    path: "/ar/fac",
                    component: AR_FACILITIES,
                    meta: { title: "facilities" },
                },
                {
                    path: "/ar/advertising",
                    component: AR_ADVERTISING,
                    meta: { title: "advertising" },
                },
                {
                    path: "/ar/static/asset",
                    component: AR_STATIC_ASSET,
                    meta: { title: "assets" },
                },

                
                {
                    path: "/login",
                    component: LOGIN,
                    meta: { title: "assets" },
                },

                
                {
                    path: "/register",
                    component: REGISTER,
                    meta: { title: "assets" },
                },





                { 
                    path: '/:catchAll(.*)', 
                    
                    name: 'NotFound'
                  }
                // {
                //     path: "/treasury/asset",
                //     component: TREASURY_ASSET,
                //     meta: { title: "assets" },
                // }
    ]
});
createApp(Layout).use(router).mount("#app");

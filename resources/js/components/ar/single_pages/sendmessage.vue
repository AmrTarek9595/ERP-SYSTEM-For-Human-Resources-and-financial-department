<template>
      <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " style="direction: rtl;">
<div class="alert alert-primary" role="alert" v-if="messageDelivered" style="background-image: linear-gradient(310deg, #7928ca82, #d6006c6b);position: absolute;left: 40%;">
  Message Sent Success
</div>
    <div class="container">
   <div class="content-wrapper">
             <div class="email-wrapper wrapper">
               <div class="row align-items-stretch">
              
                 <div class="mail-view d-none d-md-block col-md-9 col-lg-12 bg-white">
                   
                   <div class="message-body">
                     <div class="sender-details">
                       <div class="details">
                        
                         <p class="sender-email" style="font-size:20px;display: inline-flex;gap:1em">
                           
                            الي:<select class="form-select" style="  font-size: 22px;width: 303px;" v-model="to" required>
    <option value="2">إدارة الموارد البشرية</option>
    <option value="3">إدارة المالية</option>
    <option value="4">إدارة الموارد البشرية و الماليةe</option>
</select>
                           &nbsp;<i class="mdi mdi-account-multiple-plus"></i>
                         </p>
                      
                       </div>
                     </div>  <div class="sender-details">
                       <div class="details">
                         <p class="msg-subject">
                          العنوان
                         </p>
                         <p class="sender-email" style="width: 1100px;display: inline-flex;">
                           
                           <input type="text" class="form-control" v-model="subject" required>
                           &nbsp;<i class="mdi mdi-account-multiple-plus"></i>
                         </p>
                      
                       </div>
                    </div>
                     <div class="message-content">
                        <p class="msg-subject">
                          المضمون
                         </p>
                      <textarea rows="12" class="form-control" v-model="message" required></textarea>
                     </div>
                     <div class="attachments-sections">
                       <ul style="justify-content: center;display: flex;">
                        <button class="btn btn-primary" style="display: inline-flex; gap: 2em;font-size: 20px;" :onclick="sendmessage"> <i class="fa-regular fa-paper-plane fa-1x"></i>إرسال</button>
                         
                       </ul>
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
   export default {
    data: ()=>({
      to:'',
   subject:'',
   message:'',
   messageDelivered:''
}),
methods:{
  sendmessage:function(){
  let formData= new FormData();
  formData.append('to',this.to);
  formData.append('subject',this.subject);
  formData.append('message',this.message);

  axios.post("https://erp.ersal.com.sa/api/auth/sendmessage?token="+localStorage.getItem("access_token_agent"),formData).then(response=>{
   this.messageDelivered=response.data.message;
   this.to='';
   this.subject='';
   this.message='';
  })
  
  }
}
   }
   </script>
   
   <style>
   .content-wrapper{
       margin-top: 60px;
   }
   
   
   
   /* Message Content */
   .email-wrapper .message-body .sender-details {
     padding: 20px 15px 0;
     border-bottom: 1px solid #e9e9e9;
     display: -webkit-flex;
     display: flex;
   }
   
   .email-wrapper .message-body .sender-details .details {
     padding-bottom: 0;
   }
   
   .email-wrapper .message-body .sender-details .details .msg-subject {
     font-weight: 600;
   }
   
   .email-wrapper .message-body .sender-details .details .sender-email {
     margin-bottom: 20px;
     font-weight: 400;
   }
   
   .email-wrapper .message-body .sender-details .details .sender-email i {
     font-size: 1rem;
     font-weight: 600;
     margin: 0 1px 0 7px;
   }
   
   .email-wrapper .message-body .message-content {
     padding: 50px 15px;
   }
   
   .email-wrapper .message-body .attachments-sections ul {
     list-style: none;
     border-top: 1px solid #e9e9e9;
     padding: 30px 15px 20px;
   }
   
   
   </style>
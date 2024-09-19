<template>
 <div class="container">
<div class="content-wrapper">
          <div class="email-wrapper wrapper">
            <div class="row align-items-stretch">
           
              <div class="mail-view d-none d-md-block col-md-9 col-lg-12 bg-white" style="width: 200dvh;margin-left: 210px;">
                
                <div class="message-body">
                  <div class="sender-details">
                    <div class="details">
                      <h3 class="msg-subject">
                  Subject: {{ n.subject }}
                      </h3>
                      <h6 class="msg-subject">
                  Date: {{ n.created_at }}
                      </h6>
                      <!-- <p class="sender-email">
                        NAME
                        <a href="#">EMAIL</a>
                        &nbsp;<i class="mdi mdi-account-multiple-plus"></i>
                      </p> -->
                    </div>
                  </div>
                  <div class="message-content">
                    <p>Hi </p>
                    <p>{{n.message}}</p>
                  </div>
                  <div class="attachments-sections">
                    <ul>
                     
                      
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
</template>

<script>
export default {
  data: ()=>({
    
    n:{}
}),
mounted(){
  let params = new URL(document.location.toString()).searchParams;
  let name = params.get("id");

  axios.post("https://erp.ersal.com.sa/api/auth/showmcustomessage?id="+name+"&token="+localStorage.getItem("access_token_agent")).then(
    res=>{
      this.n.subject=res.data.message[0].subject;
      this.n.message=res.data.message[0].message;
      this.n.created_at=res.data.message[0].created_at;

     
      
    }
  );

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
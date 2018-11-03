$(document).ready(function() {
 
        $("#form_order").validate({
            rules: {
            	hovaten: "required",
            	email_order: "required",
            },
            messages: {
            	hovaten: "Vui lòng nhập họ",
            	email_order: "Vui lòng nhập tên",
               
            }
        });
        
      });
$("#dongy").click(function(){
	alert("davao");
});

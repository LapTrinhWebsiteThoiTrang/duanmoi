
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
		<%@ include file="Template/Layout/head.jsp" %>
	<body>
		<%@ include file="Template/Layout/header.jsp" %>
			<div class="Sign_up_class">
				<div class="main">	
					<div class="w3layouts_main agileinfo w3">		
						<div class="w3_agile_signup_form agileits">
							<h1 class="w3_agileits w3ls">Circle Sign Up</h1>
							<h2 class="wthree">Sign up to create new account</h2>
							<div class="agile_login_form">
								<form class="sign_up">
									<input type="text" name="Name" placeholder="User Name" required="">
									<input type="email" name="Email" placeholder="Email Address" required="">
									<input type="password" name="Password" placeholder="Password" required="">
									<input type="password" name="Confirm_Password" placeholder="Confirm Password" required="">
									<input type="submit" value="SIGN UP">
								</form>
							</div>
						</div>
					</div>
			</div>
		</div>
		<%@ include file="Template/Layout/footer.jsp" %>
		<%@ include file="Template/Layout/script.jsp" %>
		<script >
		$( ".sign_up" ).on( "submit",function(e) {
			e.preventDefault();
			  let _ = $(this);
				let Email = _.find('[name="Email"]').val();
				let Password = _.find('[name="Password"]').val();
				let Confirm_Password = _.find('[name="Confirm_Password"]').val();
				let Name = _.find('[name="Name"]').val();
				if(Email ==""){
					alert('Bạn chưa nhập Email');
				}
				else if(Password == ""){
					alert('Bạn chưa nhập Password');
				}
				else if(Confirm_Password == ""){
					alert('Bạn chưa nhập Confirm Password');
				}
				else if(Name == ""){
					alert('Bạn chưa nhập Name');
				}
				else if(Password != Confirm_Password){
					alert('Mật khẩu không ăn khớp');
				}
				else {
					 $.ajax({
						 url: 'DangNhap_DangKi',
						 type: 'POST',
						 method: 'POST',
						 data: {
							 'fun': 'DangKi',
							 'Email': Email,
							 'Password': Password,
							 'Name': Name
						 },
						 success: function(result){
							
							 if(result == 'true'){
								 alert("Đăng kí thành công");
								 location.href = 'index';
							 }
							 else if(result == 'false')
								 {
								 	alert("Email đã có trong hệ thống vui lòng nhập email khác");
								 	location.href = '#';
								 }
						 }
					  });
					
				}
			 
			});
		
		</script>
	</body>
</html>
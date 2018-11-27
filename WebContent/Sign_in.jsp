
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
		<%@ include file="Template/Layout/head.jsp" %>
	<body>
		<%@ include file="Template/Layout/header.jsp" %>
		<div class="Sign_in_class">
			 <h1>Vnshop LOGIN FORM</h1>
			<div class="login-form">
				<h2>Login Form</h2>	
				<ul class="form">
				<form class="sign_in">
					<li>
					<input type="text" class="email" placeholder="Username" name="email"/>
					</li>
					<li>
						<input type="password" class="password" placeholder="Password" name="password"/>
					</li>
						<div class="but-bottom">
							<input type="checkbox" name="checkbox"><span>Remember Me</span>
							<a href="#">Forgot Password ?</a>
							<div class="clear"> </div>
						</div>
							<div class="w3_log">
							<input type="submit" value="LOGIN">
						</div>
							<div class="clear"> </div>
					</form>
				</ul>
				<div class="social-icons">
					
					<div class="clear"> </div>
				</div>
					<div class="clear"> </div>
			</div>
		</div>
		<%@ include file="Template/Layout/footer.jsp" %>
		<%@ include file="Template/Layout/script.jsp" %>
		<script>
		$(".sign_in").on( "submit",function(e) {
			e.preventDefault();
			  let _ = $(this);
				let UserName = _.find('[name="email"]').val();
				let Password = _.find('[name="password"]').val();
				if(UserName ==""){
					alert('Bạn chưa nhập User Name');
				}
				else if(Password == ""){
					alert('Bạn chưa nhập Password');
				}
				else {
					 $.ajax({
						 url: 'DangNhap_DangKi',
						 type: 'POST',
						 method: 'POST',
						 data: {
							 'fun': 'DangNhap',
							 'UserName': UserName,
							 'Password': Password,
						 },
						 success: function(result){
							 if(result == 'true'){
								 alert("Đăng nhập thành công");
								 location.href = 'cart.jsp';
							 }
							 else
								 {
								 	alert("Đăng nhập không thành công. Vui lòng kiểm tra lại!");
								 	location.href = '#';
								 }
						 }
					  });
					
				}
			 
			});
		
		</script>
	</body>
</html>
<script type="text/javascript" src="public/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
	<script src="public/js/modernizr.custom.js"></script>
		<!-- Custom-JavaScript-File-Links --> 
		<!-- cart-js -->
		<script src="public/js/minicart.min.js"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action: '#'
		});
	
		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>
	
		<!-- //cart-js --> 
		<!-- single -->
	<script src="public/js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->						
	<script src="public/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
		type: 'default', //Types: default, vertical, accordion           
		width: 'auto', //auto or any width like 600px
		fit: true,   // 100% fit in a container
		closed: 'accordion', // Start closed if in accordion view
		activate: function(event) { // Callback function if tab is switched
		var $tab = $(this);
		var $info = $('#tabInfo');
		var $name = $('span', $info);
		$name.text($tab.text());
		$info.show();
		}
		});
		$('#verticalTab').easyResponsiveTabs({
		type: 'vertical',
		width: 'auto',
		fit: true
		});
		});
	</script>
	<!-- FlexSlider -->
	<script src="public/js/jquery.flexslider.js"></script>
							<script>
							// Can also be used with $(document).ready()
								$(window).load(function() {
									$('.flexslider').flexslider({
									animation: "slide",
									controlNav: "thumbnails"
									});
								});
							</script>
						<!-- //FlexSlider-->
	<!-- //script for responsive tabs -->		
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="public/js/move-top.js"></script>
	<script type="text/javascript" src="public/js/jquery.easing.min.js"></script>
	
	
	<!-- here stars scrolling icon -->
		<script type="text/javascript">
			$(document).ready(function() {
				/*
					var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
					};
				*/
									
				$().UItoTop({ easingType: 'easeOutQuart' });
									
				});
		</script>
	<!-- //here ends scrolling icon -->
	
	<!-- for bootstrap working -->
	<script type="text/javascript" src="public/js/bootstrap.js"></script>
<script type="text/javascript" src="public/js/jquery-2.1.4.min.js"></script>


	<script src="public/js/modernizr.custom.js"></script>
	
	
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
	
		
	<script type="text/javascript" src="public/js/imagezoom.js"></script>
							
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

	<script type="text/javascript" src="public/js/move-top.js"></script>
	<script type="text/javascript" src="public/js/jquery.easing.min.js"></script>
	
	
	
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

	<script type="text/javascript" src="public/js/bootstrap.js"></script>
	
	
	
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

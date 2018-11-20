$j(document).ready(function() {
			
			
				// Init All Carousel
				productCarousel($j('.carouselСategories'),4,2,1,1,1);
				blogCarousel($j('.slider-blog-layout1'),3,2,1,1,1);


		
				
				productCarousel($j('#carouselSale'),2,2,3,2,1);
				productCarousel($j('#postsCarousel'),2,3,3,2,1); // 3 - xl, 3 - lg, 3 - md, 2 - sm, 1 - xs
				mobileOnlyCarousel();
				bannerCarousel($j('.banner-carousel'));
				bannerCarousel($j('.category-carousel'));
				
				brandsCarousel($j('.brands-carousel'));
				
				
				
				// Revolution Slider
				var windowW = window.innerWidth || $j(window).width();
				var fullwidth;
				var fullscreen;

				jQuery(window).resize(sliderOptions);
				sliderOptions();
				function sliderOptions(){
					if (windowW > 767) {
						fullwidth = "off";
						fullscreen = "on";	
					} else {
						fullwidth = "on";
						fullscreen = "off";	
					}	
				}



				  jQuery('.tp-banner').show().revolution(
				  {
					dottedOverlay:"none",
					delay:16000,
					startwidth:2048,
					startheight:900,
					hideThumbs:200,
					hideTimerBar:"on",
					
					thumbWidth:100,
					thumbHeight:50,
					thumbAmount:5,
					
					navigationType:"none",
					navigationArrows:"",
					navigationStyle:"",
					
					touchenabled:"on",
					onHoverStop:"on",
					
					swipe_velocity: 0.7,
					swipe_min_touches: 1,
					swipe_max_touches: 1,
					drag_block_vertical: false,
								
					parallax:"mouse",
					parallaxBgFreeze:"on",
					parallaxLevels:[7,4,3,2,5,4,3,2,1,0],
								
					keyboardNavigation:"off",
					
					navigationHAlign:"center",
					navigationVAlign:"bottom",
					navigationHOffset:0,
					navigationVOffset:20,
			
					soloArrowLeftHalign:"left",
					soloArrowLeftValign:"center",
					soloArrowLeftHOffset:20,
					soloArrowLeftVOffset:0,
			
					soloArrowRightHalign:"right",
					soloArrowRightValign:"center",
					soloArrowRightHOffset:20,
					soloArrowRightVOffset:0,
						
					shadow:0,
					fullWidth: fullwidth,
					fullScreen: fullscreen,
			
					spinner:"",
					h_align:"left",
					
					stopLoop:"off",
					stopAfterLoops:-1,
					stopAtSlide:-1,
			
					shuffle:"off",
					
					autoHeight:"off",           
					forceFullWidth:"off",           
														
								
					hideThumbsOnMobile:"off",
					hideNavDelayOnMobile:1500,            
					hideBulletsOnMobile:"off",
					hideArrowsOnMobile:"off",
					hideThumbsUnderResolution:0,
					
					hideSliderAtLimit:0,
					hideCaptionAtLimit:0,
					hideAllCaptionAtLilmit:0,
					startWithSlide:0,
					fullScreenOffsetContainer: "#header"  
				  });
			 })
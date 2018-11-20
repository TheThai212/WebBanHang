$j(document).ready(function() {
			
			
				// Init All Carousel
				productCarousel($j('#megaMenuCarousel1'),1,1,1,1,1); 
				productCarousel($j('.banner-carousel-1'),4,4,3,2,1);
				brandsCarousel($j('.brands-carousel'));
				productCarousel($j('#carouselFeatured'),6,4,3,2,1);	
				productCarousel($j('.bannerCarousel'),4,3,3,2,1);
				productCarousel($j('.banner-slider'),1,1,1,1,1); 
				mobileOnlyCarousel();


			
				
				productCarousel($j('#postsCarousel'),2,2,2,2,1); // 3 - xl, 3 - lg, 3 - md, 2 - sm, 1 - xs
				
				
				// Instagram Feed
				var feed = new Instafeed({
					get: 'user',
					userId: '2324131028',
					clientId: '422b4d6cf31747f7990a723ca097f64e',
					limit: 20,
					sortBy: 'most-liked',
					resolution: "standard_resolution",
					accessToken: '2324131028.422b4d6.d6d71d31431a4e8fbf6cb1efa1a2dfdc',
					template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /></a>'
				});
				feed.run();
				
				
			 })
$j(document).ready(function() {
				
				
				$j('.video-link').magnificPopup({
					disableOn: 767,
					type: 'iframe',
					removalDelay: 160,
					preloader: false,			
					fixedContentPos: false
				});
			
				// Init All Carousel		
			
				thumbnailsCarousel($j('.product-images-carousel ul'));
				productCarousel($j('#carouselRelated'),6,4,4,2,1);
				verticalCarousel($j('.vertical-carousel-2'),3);
				productCarousel($j('#mobileGallery'),1,1,1,1,1);
			
				
				elevateZoom();
			
			})
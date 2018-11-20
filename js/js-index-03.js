$j(document).ready(function() {		

	// Init All Carousel	
	productCarousel($j('.banner-slider'),1,1,1,1,1); 
	productCarousel($j('#carouselNew'),3,2,2,2,1);
	productCarousel($j('#carouselSale'),3,2,2,2,1);
	productCarousel($j('#carouselFeatured'),6,4,3,2,1);		
	productCarousel($j('#megaMenuCarousel1'),1,1,1,1,1); 

	mobileOnlyCarousel();							
	
 })
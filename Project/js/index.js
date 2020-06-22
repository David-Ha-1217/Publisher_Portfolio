$(document).ready(function(){
    var slider = $("#slide_banner").bxSlider ({
        mode : "horizontal",
        speed : 500,
        pager : false,
        moveSlides:1,
        slideWidth:229,
        minSlides:5,
        maxSlides:5,
        auto:true,
        autoHover:true,
        controls:false,
        ariaLive:true
    });

    $("#prevBtn").on("click",function(){
        slider.goToPrevSlide();
        return false;
    });

    $("#nextBtn").on("click",function(){
        slider.goToNextSlide();
        return false;
    });
});
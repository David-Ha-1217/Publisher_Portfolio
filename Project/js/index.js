$(document).ready(function(){
    $(".nav li").hover(function() {
        $(this).children("ul").stop().slideToggle(500)
    });
});
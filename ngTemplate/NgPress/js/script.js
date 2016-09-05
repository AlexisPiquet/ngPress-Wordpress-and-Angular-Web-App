// ----- Annimations jQuery -----//

$( document ).ready(function() {

/* Templates */
    $('body').append('<a href="" class="backToTop bounceInUp animated"><i class="material-icons">keyboard_arrow_up</i></a>')    

/* DisplayNONE */
    $("#menuModal").hide();
    $('.menuGlobal').hide();
    $(".backToTop").hide();

/* BackToTop */
    $(window).scroll(function(e){
        e.preventDefault();
        $position = $(window).scrollTop();
        if($position > 150){
            $('.backToTop').fadeIn(600);
        }else{
            $(".backToTop").removeClass("bounceOut");
            $('.backToTop').hide(100);
        }
    });

    $('.backToTop').click(function(e){
        e.preventDefault();
        $('body, html').animate({scrollTop : 0}, 600);
        $(".backToTop").addClass("bounceOut");
        return false;
    });

/* Menu */
    $("#openMenu").click(function(){
        $("#menuModal").show(300);
        $('.menuGlobal').delay(300).show(300);      
    });
    $("#closeMenu").click(function(){
        $("#menuModal").hide(300);
        $('.menuGlobal').hide(0);
    });

/* Home */
    $('.modalLogo').click(function(){
        $('#home').show(300);
        $('#works').hide(600);
        $('#about').hide(600);
        $('#contact').hide(600);
        $('#menuModal').hide(600);
    });

/* Works */
    $('#worksMe').click(function(){
        $('#works').show(300);
        $('#home').hide(600);
        $('#about').hide(600);
        $('#contact').hide(600);
        $('#menuModal').hide(600);
    });

/* About */
    $("#aboutMe").click(function(){
        $("#about").show(300);
        $("#home").hide(600);
        $('#works').hide(600);
        $('#contact').hide(600);
        $("#menuModal").hide(600);
    });

/* Contact */
    $("#contactMe").click(function(){
        $("#contact").show(300);
        $("#home").hide(600);
        $('#works').hide(600);
        $("#about").hide(600);
        $("#menuModal").hide(600);
    });


});






























































   
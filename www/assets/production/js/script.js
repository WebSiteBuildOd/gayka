$(function(){
    $('form [name="v-i"]').each(function(){
       $(this).attr('value', '');
    });
    $('.reviews-slider').slick({
       slidesToShow: 2,
       arrows:false,
       dots: true,
        responsive: [

            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true
                }
            },
        ]
    });

    $('.articles__contents').slick({
        slidesToShow: 3,
        arrows:false,
        dots: false,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: true
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true
                }
            },
        ]
    });

    /* FAQ */
    $('.faq__contents .faq_caption').click(function(e){
       e.preventDefault();
       let th = $(this),
           row = th.closest('.faq_row');
       if(!row.hasClass('active')) {
           $('.faq__contents .faq_row.active').each(function(){
               $(this).toggleClass('active');
              $(this).find('.faq_answer').stop().slideUp(300);
           });
       }
       row.find('.faq_answer').stop().slideToggle(300);
       row.toggleClass('active');
    });

    $('.btn-close-popup').click(function(e){
       e.preventDefault();
       $(this).closest('.popup-default').removeClass('active');
        $('.btn-menu-show').removeClass('active');
    });

    $('.btn-menu-show').click(function(e){
        e.preventDefault();
        $(this).toggleClass('active');
        $('.popup-menu-mobile').toggleClass('active');
    });

    $('.menu-popup-nav-other .nav-item__title').click(function(e){
       e.preventDefault();
       $(this).next('.nav-item__content').slideToggle();
    });

    /* Popups */

    $('[data-popup]').click(function(e){
       e.preventDefault();
       let form = $(this).attr('data-popup');
       $('#'+form).fadeIn(300);
    });

    $('.popup .bg').click(function(e){
        e.preventDefault();
        $(this).closest('.popup').fadeOut(200);
    });

    /* AjaxForm */
    function showPopupSuccess(){
        $('#popupSuccessCallback').fadeIn();
        setTimeout(function(){
            $('#popupSuccessCallback').fadeOut();
        }, 5000);
    }
    $(document).on('af_complete', function(event, r) {
        let form = r.form;
        if (form.attr('id') === 'form-callback' && r.success) {
            showPopupSuccess();
        } else if (form.attr('id') === 'form-there-question' && r.success) {
            showPopupSuccess();
        }
    });
});
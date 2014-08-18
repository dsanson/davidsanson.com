$(document).ready(function(){
    $(".copyMe.A.slot").keyup(function(){
            $(".copyMe.A.slot").val($(this).val());
    });
    $(".copyMe.B.slot").keyup(function(){
            $(".copyMe.B.slot").val($(this).val());
    });
    $(".copyMe.C.slot").keyup(function(){
            $(".copyMe.C.slot").val($(this).val());
    });
    $(".copyMe.P.slot").keyup(function(){
            $(".copyMe.P.slot").val($(this).val());
    });
    $(".copyMe.Q.slot").keyup(function(){
            $(".copyMe.Q.slot").val($(this).val());
    });
    $(".copyMe.R.slot").keyup(function(){
            $(".copyMe.R.slot").val($(this).val());
    });
    $(".copyMe.S.slot").keyup(function(){
            $(".copyMe.S.slot").val($(this).val());
    });
    $( ".answers" ).click( "mouseover", function() {
            $( this ).css( "color", "black" );
    });
});

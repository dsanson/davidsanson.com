$(document).ready(function(){
    
     // Function for auto-resizing input textboxes
     
     var autoresize = function() {
         // I'm assuming that 1 letter will expand the input by 10 pixels
         var oneLetterWidth = 6;
         // are typed
         var minCharacters = 3;
         var len = $(this).val().length;
         if (len > minCharacters) {
             // increase width
             $(this).width(len * oneLetterWidth);
         } else {
             // restore minimal width;
             $(this).width(oneLetterWidth * minCharacters);
         }
     };

    // Logical Form
    // Term Logic
    $(".copyMe.A.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.A.slot").each(function(){
                $(this).val($(that).val()); 
                autoresize.apply( this );
            });
    });
    $(".copyMe.B.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.B.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });
    $(".copyMe.C.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.C.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });

     // Logical Form
     // Sentential Logic
    $(".copyMe.P.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.P.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });
    $(".copyMe.Q.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.Q.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });
    $(".copyMe.R.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.R.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });
    $(".copyMe.S.slot").keyup(function(){
            autoresize.apply( this );
            that = this;
            $(this).parents("ol, ul, .der, .cor").find(".copyMe.S.slot").each(function(){
                $(this).val($(that).val());    
                autoresize.apply( this );
            });
    });

    // Answers are displayed on click
    $( ".answers" ).click( "mouseover", function() {
            $( this ).css( "color", "black" );
    });

    // Truth Tables
    //    '.' indicates break between premises
    $('[class^="tt"]').find('th:contains("."), td:contains(".")').each(function() {
        $( this ).css( "border-right", "thin solid" );
        $( this ).text( $( this ).text().replace('.',""));
    });


    // Derivations
    //    '|' or '│' indicates boxed line
    $('td:contains("│")' ).each(function() {
        $( this ).css( { "border-left": "thin solid" });
        $( this ).text( $( this ).text().replace('│'," "));
    });
    //    '┌' indicates top of box
    $('td:contains("┌")' ).each(function() {
        $( this ).css( { "border-left": "thin solid",
                         "border-top": "thin solid" });
        $( this ).text( $( this ).text().replace('┌'," "));
    });
    //    '└' indicates bottom of box
    $('td:contains("└")' ).each(function() {
        $( this ).css( { "border-left": "thin solid",
                         "border-bottom": "thin solid" });
        $( this ).text( $( this ).text().replace('└'," "));
    });
    //    '!Show' is a canceled show line
    $( 'td:contains("!Show")' ).each(function() {
        $( this ).css( "text-decoration", "line-through" );
        $( this ).text( $( this ).text().replace('!Show','Show'));
    });



});



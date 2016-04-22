jQuery(document).ready(function() {

    //select
    $('.orgx .lesinhoud').hide();
    $('.orgx .welkom').show();
    $('.orgx .orgonderdelen').change(function() {
      // AN
      // $("form")[0].submit();
      // $('#search_submit').submit();
      $("#search_submit").click();
      // END AN
        
        // $('.orgscontainer .orgshow').hide();
 //        $('.orgscontainer #' + $(this).val()).show();
    })


    $(document.body).on("click", ".btn-intverslagview", function() {
        $(".btn-intverslagview").toggleClass("bold");
        $(".simrow.accountingintern").toggle();
    });
    $(document.body).on("click", ".btn-extverslagview", function() {
        $(".btn-extverslagview").toggleClass("bold");
        $(".simrow.accountingextern").toggle();
    });


    //knoppen boven bakker

    $(".btnorg1").click(function() { // klein
        $(".itembody-display, .b, .pijlwaarde, .groot, .btnorg1 ").addClass("displaynone");
        $(".pijlwaarde").addClass("displaynone");
        $(".timeshow").animate({
            height: '400px'
        }, 150);
        $(".orgheader, .overeenkomsten, .geld, .overheid, .finprod, .orgbuttons ").animate({
            width: '400px'
        }, 150);
        $(".geldpijlrechts, .orgnaampijlrechts").animate({
            left: "325px"
        }, 150);
        $(".a, .c ").animate({
            height: "280px"
        }, 150);
        $(".btnorg2, .klein ").removeClass("displaynone");
        $(".vergroting").hide();
    });

    $(".btnorg2").click(function() { // groot
        $(".orgheader, .overeenkomsten, .geld,.overheid, .finprod,  .orgbuttons ").animate({
            width: "600px"
        }, 150);
        $(".geldpijlrechts, .orgnaampijlrechts").animate({
            left: "575px"
        }, 150);
        $(".timeshow").animate({
            height: '600px'
        }, 150);
        $(".a, .c ").animate({
            height: "400px"
        }, 150);
        $(".itembody, .b, .groot, .klein, .btnorg2 ").addClass("displaynone");
        setTimeout(function() {
            $(".itembody-display, .b, .groot, .btnorg1 ").removeClass("displaynone");
        }, 120);
        $(".org-all").toggleClass("displaynone");

    });
    $(".btnorg3").click(function() { // processen
        $(".pijllinks").toggle();
        $(".pijlrechts").toggle();
        $(".timeshow, .timeshowheader, .waardeinvestering, .container-ev-display, .tw-waarde").addClass("displaynone");
        $(".vergroting").hide();
    });
    $(".btnorg4").click(function() { // waarde
        $(".pijlwaarde, .waardeinvestering, .timeshow, .timeshowheader, .tw-waarde, .container-ev-display").removeClass("displaynone");
        $(".pijlwaarde, .waardeinvestering").toggleClass("waardeniet");
    });

    /*overzichtfoto*/
    //AN: Veranderd omdat .click niet werkt met AJAX 
    $( document ).on( 'click', '.btn-overzichtsfoto, .overzichtsfoto-div', function () {
    // $(".btn-overzichtsfoto, .overzichtsfoto-div").click(function() { //overzichtsfoto
        $(".overzichtsfoto-div").slideToggle();
    });

    $(".btn-container-movie").click(function() {
        $(".container-movie").show();
    });
    $(".movieheader").click(function() {
        $(".container-movie").hide();
    });

    // Vergrotingen aan- en uitzetten



    $(".b").click(function() {
        $(".vergroting").hide();
        $("#vergroting-toewijzing").slideDown("fast");
    });
    $(".tekoop").click(function() {
        $(".vergroting").hide();
        $(".vergroting-tekoop").show();
    });
    $(".reclame").click(function() {
        $(".vergroting").hide();
        $(".reclame .vergroting").toggle();
    });
    //  accounting  accountingintern is in proto.html
    $('.chk-intern').change(function() {
        if ($(this).prop("checked")) {
            $('.accountingintern').show();
        } else {
            $('.accountingintern').hide();
        }
    });
    $('.chk-extern').change(function() {
        if ($(this).prop("checked")) {
            $('.accountingextern').show();
        } else {
            $('.accountingextern').hide();
        }
    });


    // PIJLEN
    $(document.body).on({
        mouseenter: function() {
            $(".geld .pijlwaarde").toggle("waardeniet");
        },
        mouseleave: function() {
            $(".geld .pijlwaarde").toggle("waardeniet");
        }
    }, ".geld");


    $(document.body).on("hover", ".geld", function() {
        $(".vergroting").hide();
        $(".reclame .vergroting").show();
    });


    $(document.body).on("click", ".vergroting", function() {
        $(".vergroting").hide();
    });

    $(document.body).on("click", ".orgheader:nth-child(4)", function() {
        $(".nav-products").show();
    });
    $(document.body).on("click", ".orgheader:nth-child(5)", function() {
        $(".nav-products").show();
    });


    /* Deze zijn volgens Thijs oud

    $(document.body).on("click", ".btn-accounting-extern", function() {
        $(".accountingintern").addClass("displaynone");
        $(".accountingextern").removeClass("displaynone");
        $(".btn-accounting-intern").removeClass("bold");
        $(".btn-accounting-extern").addClass("bold");
    });
    $(document.body).on("click", ".btn-accounting-intern", function() {
        $(".accountingextern").addClass("displaynone");
        $(".accountingintern").removeClass("displaynone");
        $(".btn-accounting-extern").removeClass("bold");
        $(".btn-accounting-intern").addClass("bold");
    });
*/

}); // document ready

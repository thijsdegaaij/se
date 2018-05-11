var ready = function() {

    //select
    /*kleuren in organisatie*/
    /*START*/

    // $(".other_layer").toggle(); //alle other_layers uit

    // $(".l_journaals").toggle(); //overeenkomstne uit
    $(".l_overheid, .l_eigenaar, .l_ev").toggle(); //belastingen, eigenaar en EV uit
    /*kleuren uit*/
    $(".l_journaals .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_klanten .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_leveranciers .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_verkochte_producten .first_layer .middle").toggleClass("bg_kleur_verkocht");
    $(".l_functionele_kosten .first_layer .middle, .l_product_dienstverlenend .first_layer .middle, .l_kostensoorten .first_layer .middle").toggleClass("bg_kleur_kosten");
    $(".l_vla .first_layer .middle, .l_va .first_layer .middle, .l_kosten .first_layer .middle, .l_personeel .first_layer .middle, .l_fp .first_layer .middle").toggleClass("bg_kleur_input");
    $(".l_overheid .first_layer .middle, .l_eigenaar .first_layer .middle").toggleClass("bg_kleur_belasting_eigenaar");
    $(".l_geld .first_layer .middle").toggleClass("bg_kleur_geld");
    $(".l_ev .first_layer .middle").toggleClass("bg_kleur_ev");
    $(".l_journaals .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_klanten .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_leveranciers .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
    $(".l_verkochte_producten .other_layer .middle").toggleClass("bg_kleur_verkocht");
    $(".l_functionele_kosten .other_layer .middle, .l_product_dienstverlenend .other_layer .middle, .l_kostensoorten .other_layer .middle").toggleClass("bg_kleur_kosten");
    $(".l_vla .other_layer .middle, .l_va .other_layer .middle, .l_kosten .other_layer .middle, .l_personeel .other_layer .middle, .l_fp .other_layer .middle").toggleClass("bg_kleur_input");
    $(".l_overheid .other_layer .middle, .l_eigenaar .other_layer .middle").toggleClass("bg_kleur_belasting_eigenaar");
    $(".l_geld .other_layer .middle").toggleClass("bg_kleur_geld");
    $(".l_ev .other_layer .middle").toggleClass("bg_kleur_ev");
    /*andere beginvoorwaarden*/
    $('.orgx .lesinhoud').hide();
    $('.orgx .welkom').show();
    $('.orgx .orgonderdelen').change(function() {
        // AN
        // $("form")[0].submit();
        // $('#search_submit').submit();

        $("#search_submit").click();
        // Hoeft niet apart voor #search_jnlverk_submit,etc  die gaat vanzelf mee via h_journaal
        setTimeout(function() { $("#search_jnlink_submit").click(); }, 1000);

        // END AN

        // $('.orgscontainer .orgshow').hide();
        //        $('.orgscontainer #' + $(this).val()).show();
    })


    /*VERTIKAAL VERTIKAAL*/
    /* KNOPPEN BOVEN BAKKER*/

    /*Grootboekrekeningen*/
    $(".btn_boven_organisatie .btnorg1").click(function() { // klein
        $(".other_layer").toggle();
    });
    /*dienstverlenende producten*/
    $(".btn_boven_organisatie .btnorg2").click(function() { // klein
        $(".l_functionele_kosten, .l_product_dienstverlenend, .l_kostensoorten").toggle();
    });
    /*leveranciers en klanten*/
    $(".btn_boven_organisatie .btnorg3").click(function() { // klein
        $(".l_leveranciers, .l_klanten").toggle();
    });
    /*leveranciers en klanten*/
    $(".btn_boven_organisatie .btnorg6").click(function() { // overeenkomsten
        $(".l_journaals").toggle();
    });
    /*leveranciers en klanten*/
    $(".btn_boven_organisatie .btnorg7").click(function() { // belastingen en eigenaar
        $(".l_overheid, .l_eigenaar").toggle();
    });
    $(".btn_boven_organisatie .btnorg4").click(function() { // waarde
        $(".l_ev").toggle();
    });

   $(".headerorg .btn-overzichtsfoto").click(function() { // waarde
        $(".foto_org").toggle();
    });
   $(".headerorg .btn-movie").click(function() { // waarde
        $(".movie_org").toggle();
    });
   $(".other_layer .two").hover(function() { // waarde
        $(".other_layer .one").toggle();
    });

    $(".other_layer .ten").toggleClass("visible");
   $(".other_layer .nine").hover(function() { // waarde
        $(".other_layer .ten").toggleClass("visible");
    });
/*    per regel other_layer laten zien*/
    $(".ledger_type").children(".first_layer").hover(function() {
        marked($(this));
        return false;
    });

    function marked(ledger_type) {
        console.log($(ledger_type));
        $(ledger_type).children(".other_layer").toggle(); //css({"border": "2px solid red"});     
    }


    /*KLEUREN*/
    $(".btn_boven_organisatie .btnorg5").click(function() { // waarde
        $(".l_journaals .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
        $(".l_klanten .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
        $(".l_leveranciers .first_layer .middle").toggleClass("bg_kleur_overeenkomst");
        $(".l_verkochte_producten .first_layer .middle").toggleClass("bg_kleur_verkocht");
        $(".l_functionele_kosten .first_layer .middle, .l_product_dienstverlenend .first_layer .middle, .l_kostensoorten .first_layer .middle").toggleClass("bg_kleur_kosten");
        $(".l_vla .first_layer .middle, .l_va .first_layer .middle, .l_kosten .first_layer .middle, .l_personeel .first_layer .middle, .l_fp .first_layer .middle").toggleClass("bg_kleur_input");
        $(".l_overheid .first_layer .middle, .l_eigenaar .first_layer .middle").toggleClass("bg_kleur_belasting_eigenaar");
        $(".l_geld .first_layer .middle").toggleClass("bg_kleur_geld");
        $(".l_ev .first_layer .middle").toggleClass("bg_kleur_ev");
        $(".l_journaals .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
        $(".l_verkochte_producten .other_layer .middle").toggleClass("bg_kleur_verkocht");
        $(".l_functionele_kosten .other_layer .middle, .l_product_dienstverlenend .other_layer .middle, .l_kostensoorten .other_layer .middle").toggleClass("bg_kleur_kosten");
        $(".l_vla .other_layer .middle, .l_va .other_layer .middle, .l_kosten .other_layer .middle, .l_personeel .other_layer .middle, .l_fp .other_layer .middle").toggleClass("bg_kleur_input");
        $(".l_overheid .other_layer .middle, .l_eigenaar .other_layer .middle").toggleClass("bg_kleur_belasting_eigenaar");
        $(".l_geld .other_layer .middle").toggleClass("bg_kleur_geld");
        $(".l_ev .other_layer .middle").toggleClass("bg_kleur_ev");
        $(".l_klanten .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
        $(".l_leveranciers .other_layer .middle").toggleClass("bg_kleur_overeenkomst");
    });

    //  Grootboekrekening Voorraad brood
    $(document.body).on("click", ".l_vla .other_layer", function() {
        $(".grootboek-rails").toggleClass("displaynone");
    });


    //YELLOW BUTTONS
    $(".l_verkochte_producten .icon-product-geproduceerd").hover(function() { // processen
        $(".l_va .other_layer .nine, .l_va .other_layer .ten, .l_kosten .other_layer .nine, .l_kosten .other_layer .ten, .l_personeel .other_layer .nine, .l_personeel .other_layer .ten, .l_rente .middle, .l_vla .nine, .l_vla .ten").toggleClass("attention_yellowbackground");
    });

    /*  UITKLAPPEN dienstverlenendeVoorbeelden*/
    $(".l_product_dienstverlenend .middle").click(function() { // processen
        $(" .dienstverlenende_voorbeelden_wrap").toggle();
    });

    /* UITKLAPPEN Functionele kosten*/
    $(".l_functionele_kosten .middle").click(function() { // processen
        $(".functionele_kosten_wrap").toggle();
    });

    /* UITKLAPPEN Kostensoorten*/
    $(".l_kostensoorten .middle").click(function() { // processen
        $(".kostensoorten_wrap").toggle();
    });



    /*OUD OUD OUD */

    // navtwee onder organisatie 
    $(document.body).on("click", ".btn-organisatieview", function() {
        $(".orgx .navtwee .navbtn").removeClass(" btngeselecteerd");
        $(".btn-organisatieview").addClass(" btngeselecteerd");
        $(".basisorganisatie").show();
        $(".simrow.accountingintern").hide();
        $(".simrow.accountingextern").hide();
    });
    $(document.body).on("click", ".btn-intverslagview", function() {
        $(".orgx .navtwee .navbtn").removeClass(" btngeselecteerd");
        $(".btn-intverslagview").addClass(" btngeselecteerd");
        $(".basisorganisatie").hide();
        $(".simrow.accountingintern").show();
        $(".simrow.accountingextern").hide();
    });
    $(document.body).on("click", ".btn-extverslagview", function() {
        $(".orgx .navtwee .navbtn").removeClass(" btngeselecteerd");
        $(".btn-extverslagview").addClass(" btngeselecteerd");
        $(".basisorganisatie").hide();
        $(".simrow.accountingintern").hide();
        $(".simrow.accountingextern").show();
    });





    // GBR vergroting

    $(document.body).on("click", ".toon_gbr_inkoopbrood", function() {
        $(".gbr_vergroot.inkoopbrood").toggleClass("displaynone");
    });
    $(document.body).on("click", ".toon_gbr_verkoopbrood", function() {
        $(".gbr_vergroot.verkoopbrood").toggleClass("displaynone");
    });
    // delete button
    $(document.body).on("click", ".icon-delete ", function() {
        $(".gbr_vergroot").addClass("displaynone");
    });




    /*overzichtfoto*/
    //AN: Veranderd omdat .click niet werkt met AJAX 
    $(document).on('click', '.btn-overzichtsfoto, .overzichtsfoto-div', function() {
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
    $(".admin").click(function() {
        $(".vergroting").hide();
        $(".admin .vergroting").toggle();
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

}; // document ready

$(document).ready(ready);
$(document).on('page:load', ready);
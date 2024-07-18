var ready = function() {

    // inboeken
    /* Wat is dit?
    $(document.body).on("click", ".btn-accintern .grootboeka", function() {
        $(".inboeken-all").slideDown();
        $(".btn-accintern .inboeken").removeClass("bold");
    });
*/

    $(document.body).on("click", ".btngrootboek, .artwork-klappers", function() {
        $("#search_gb_results").removeClass('displaynone');
        $(".containerinboeken, .kprijscontainer").addClass('displaynone');
        $(".navdrie .navbtn").removeClass(" btngeselecteerd");
        $(".btngrootboek").addClass(" btngeselecteerd");
    });

    $(document.body).on("click", ".btninboeken, .artwork-klappers", function() {
        $(".containerinboeken").removeClass('displaynone');
        $("#search_gb_results, .kprijscontainer").addClass('displaynone');
        $(".navdrie .navbtn").removeClass(" btngeselecteerd");
        $(".btninboeken").addClass(" btngeselecteerd");
    });

    $(document.body).on("click", ".btnkostprijs", function() {
        $(".kprijscontainer").removeClass('displaynone');
        $(".containerinboeken, #search_gb_results").addClass('displaynone');
        $(".navdrie .navbtn").removeClass(" btngeselecteerd");
        $(".btnkostprijs").addClass(" btngeselecteerd");
        /*
        $(".btns-intern button").removeClass("bold");   
        $(".btnkostprijs").addClass("bold");  */
    });

    // AN: Kies een journaal
    $('#jnl_ink').change(function() {
       $("#search_jnlink_submit").click();
    });
    $('#jnl_verk').change(function() {
       $("#search_jnlverk_submit").click();
    });
    $('#jnl_bank').change(function() {
       $("#search_jnlbank_submit").click();
    });
    $('#jnl_lev').change(function() {
       $("#search_jnllev_submit").click();
    });
    $('#jnl_intern').change(function() {
       $("#search_jnlintern_submit").click();
    });

    //button kosten in grootboek
    $(document.body).on("click", ".kosten-output", function() {
        $(".kosten-input").toggleClass('accent');
    });

    $(document.body).on("click", ".btn-inboeken.inkoop", function() {
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.inkoop").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.inkoop").removeClass("displaynone");
        $(".inboekingsmogelijkheden").addClass("displaynone");
        $(".inboekingsmogelijkheden.inkoop").removeClass("displaynone");
    });
    $(document.body).on("click", ".btn-inboeken.verkoop", function() {
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.verkoop").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.verkoop").removeClass("displaynone");
        $(".inboekingsmogelijkheden").addClass("displaynone");
        $(".inboekingsmogelijkheden.verkoop").removeClass("displaynone");
    });
    $(document.body).on("click", ".btn-inboeken.bank", function() {
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.bank").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.bank").removeClass("displaynone");
        $(".inboekingsmogelijkheden").addClass("displaynone");
        $(".inboekingsmogelijkheden.bank").removeClass("displaynone");
    });
    $(document.body).on("click", ".btn-inboeken.kas", function() { // button is er niet
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.kas").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.kas").removeClass("displaynone");
        $(".inboekingsmogelijkheden.kas").addClass("displaynone");
    });
    $(document.body).on("click", ".btn-inboeken.leveringen_uit", function() {
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.leveringen_uit").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.leveringen_uit").removeClass("displaynone");
        $(".inboekingsmogelijkheden").addClass("displaynone");
        $(".inboekingsmogelijkheden.leveringen_uit").removeClass("displaynone");
    });
    $(document.body).on("click", ".btn-inboeken.intern_boekingen", function() {
        $(".btn-inboeken").removeClass("bold");
        $(".btn-inboeken.intern_boekingen").addClass("bold");
        $(".journaal").addClass("displaynone");
        $(".journaal.intern_boekingen").removeClass("displaynone");
        $(".inboekingsmogelijkheden").addClass("displaynone");
        $(".inboekingsmogelijkheden.intern_boekingen").removeClass("displaynone");
    });

    // gbr-vergroot ()
    $(".gbr-row:even").css("background-color", "#f3f4f4");

    $(document.body).on("click", ".k2.voorraad", function() {
        $(".gbr-vergroot.voorraad").removeClass("displaynone");
    });
    $(document.body).on("click", ".k2.verkopen", function() {
        $(".gbr-vergroot.verkopen").removeClass("displaynone");
    });
    $(document.body).on("click", ".titel ", function() {
        $(".gbr-vergroot").addClass("displaynone");
    });


}; // document ready

$(document).ready(ready);
$(document).on('page:load', ready);





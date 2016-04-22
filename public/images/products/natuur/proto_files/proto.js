/*scroll function*/
var InitNiceScroll = function(){ 
/*
  $("html").niceScroll();*/
/*
  $(".part-display .products").niceScroll(); werkt niet als later wordt geladen*/
  $(".org .account").niceScroll();
  $(".productbranche .products").niceScroll(); 
  $(".orgcontain .body").niceScroll();
  $("#orgdivision_group-container").niceScroll();
  $(".opdrachtcontainer").niceScroll();
  //$(".gbr-rows-scroll").niceScroll();
  $(".sito").getNiceScroll().hide();
}

// Display action can be called via html element with a date-target attr, 
// or via a call in the code
var ActionAI = function(buttonCall, codeCall){


  var datatarget; 
  if (buttonCall == undefined) datatarget = codeCall
  else datatarget = $(this).attr("data-target")

  if (datatarget == undefined) console.log("div has actionAI class, but no datatarget")
  var targetCodes = datatarget.split(";")

    targetCodes.forEach(function(targetCode){

      var mainCode = targetCode.split(":")[0];
      var main = {};  
      main.target = mainCode.split("_")[0];
      main.action = mainCode.split("_")[1]; 

      var subCodeArr = targetCode.split(":")[1];
      var subArr = []; 
      if (subCodeArr){
        subCodeArr.split(",").forEach(function(subCode){
          var sub = {}; 
          sub.target = subCode.split("_")[0]
          sub.follow = subCode.split("_")[1]
          sub.action = subCode.split("_")[2]
          subArr.push(sub)
        })
      }

      if (main.action == "T") ToggleMain(main, subArr); 
      if (main.action == "A") ActiveMain(main, subArr); 
      if (main.action == "I") InactiveMain(main, subArr); 
    })
  }

  var ToggleMain = function(main, subArr){
    var target = $("#" + main.target);
    var active = !target.hasClass("inactive"); 

    if (active){ 
      target.addClass('inactive');
      target.removeClass('active'); 
      subArr.forEach(function(sub){
        if (sub.follow == "AI"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    } else {
      target.addClass('active');
      target.removeClass('inactive'); 
      subArr.forEach(function(sub){
        if (sub.follow == "IA"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    }
  }

  var ActiveMain = function(main, subArr){
    var target = $("#" + main.target);
    var active = !target.hasClass("inactive"); 

    if (active){ 
      target.addClass('active');
      target.removeClass('inactive'); 
      subArr.forEach(function(sub){
        if (sub.follow == "AA"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    } else {
      target.addClass('active');
      target.removeClass('inactive'); 
      subArr.forEach(function(sub){
        if (sub.follow == "IA"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    }
  }

  var InactiveMain = function(main, subArr){
    var target = $("#" + main.target);
    var active = !target.hasClass("inactive"); 

    if (active){ 
      target.addClass('inactive');
      target.removeClass('active'); 
      subArr.forEach(function(sub){
        if (sub.follow == "AI"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    } else {
      target.addClass('inactive');
      target.removeClass('active'); 
      subArr.forEach(function(sub){
        if (sub.follow == "II"){
          if (sub.action == "T") ToggleSub(sub.target); 
          if (sub.action == "A") ActiveSub(sub.target); 
          if (sub.action == "I") InactiveSub(sub.target); 
        }
      })
    }
  }

  var ToggleSub = function(targetId){
    var target = $("#" + targetId);
    var active = !target.hasClass("inactive");
    if (active) {target.addClass('inactive'); target.removeClass('active');} 
    else {target.addClass('active'); target.removeClass('inactive');} 
  }

  var ActiveSub = function(targetId){
    var target = $("#" + targetId);
    target.addClass('active'); 
    target.removeClass('inactive'); 
  }

  var InactiveSub = function(targetId){ 
    var target = $("#" + targetId);
    target.addClass('inactive'); 
    target.removeClass('active'); 
  }

  var HideConceptBrowser =  function (e){
      var container = $("#conceptbrowser");
      if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0){ // ... nor a descendant of the container
        container.hide();
    }
  }
  var HideNavMenu =  function (e){
    var container = $(".nav-menu");
    if (!container.is(e.target) // if the target of the click isn't the container...
      && container.has(e.target).length === 0){ // ... nor a descendant of the container
      container.hide();
   }
  }



  var InitJssorSlider = function (containerId1,containerId2, containerId3, containerId4) {
    var options = {
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500

                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                  },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                  //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10,                                  //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                  }
                };


                var jssor_slider1 = new $JssorSlider$(containerId1, options);
                var jssor_slider2 = new $JssorSlider$(containerId2, options);
                var jssor_slider3 = new $JssorSlider$(containerId3, options);
                //  var jssor_slider4 = new $JssorSlider$(containerId4, options);
    };

var GetOrgDivisonContent = function(){ 
  $.get("/proto/getOrgDivisonContent/")
  .done(function(res){
    $("#orgdivision-container").html(res);

  })
  .fail(function(b){})
}

var GetOrgDivisonContent_Group = function(){ 
  var id = $(this).attr('id')
  $.get("/proto/getOrgDivisonContent_Group/" + id)
  .done(function(res){
    $("#orgdivision_group-container").html(res);
  })
  .fail(function(b){})
}


$(document).ready(function() { 

  InitNiceScroll(); 
  $(document.body).on("click", ".actionAI", ActionAI); 
  $(document).mouseup(HideConceptBrowser);
  $(document).mouseup(HideNavMenu);
  InitJssorSlider("slider1_container","slider2_container", "slider3_container", "slider4_container");
  


  $(document.body).on("click", "#btn-lijstbedrijfstakken", GetOrgDivisonContent); 
  $(document.body).on("click", ".btnOrgDiv_Group", GetOrgDivisonContent_Group); 
   
  








   //toggle journaal
/*

   $("#toggleovr").click(function(){
       $("#ovr").toggle(200);
   });*/


});



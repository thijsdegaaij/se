/* Thijs heeft dit uitgezet; maakte een fout


var InitTypeAhead = function(){
  // create's auto fill concept search bar 
  $.get("/basic/requests/typeaheadInput", function(typeaheadConceptList){
 
      var typeaheadHound = new Bloodhound({
          name: 'concepts',
          local: typeaheadConceptList,
          datumTokenizer: function(d) {
            return Bloodhound.tokenizers.whitespace(d.name);
          },
          queryTokenizer: Bloodhound.tokenizers.whitespace
      });

      typeaheadHound.initialize();

      $('input.typeahead').typeahead({
        hint: true,
        highlight: true,
        minLength: 1, 
      },
      {
        name: 'concepts',
        displayKey: 'name',
        source: typeaheadHound,
        templates: {
            empty: '<div class="empty-message">No matches.</div>', 
            suggestion: function(typeaheadHound){
                return '<div id="' + typeaheadHound.id + '">' + typeaheadHound.name + '</div>';
            }
        }, 
        limit: 10
      })
      return false; 
  });  
}


var ClickTypeAhead = function(){
  var id = $(this).attr('id'); 
  var datatarget = "concept-nav-expmenu_A:concept-nav-triangle_IA_A";
  ActionAI(undefined, datatarget); 
  ConceptNavExpContent(id);   
}


// var EnterTypeAhead = function(){
//   $("input.searchField")

// }

var ConceptNavExpContent = function(id){
  $.get("/basic/requests/getConceptBrowserContent/" + id)
  .done(function(res){
    $("#concept-nav-expmenu").html(res);

  })
  .fail(function(b){})
}


jQuery(document).ready(function( $ ) {

  InitTypeAhead(); 

  $('#searchField').keydown(function(e) {
      if(e.keyCode === 13); ShowConceptNavExp;
  })

  $(document.body).on('click', '.tt-selectable', ClickTypeAhead); 
  $(document.body).on('click', '.clickAbleConcept', ClickTypeAhead); 
 
})


*/
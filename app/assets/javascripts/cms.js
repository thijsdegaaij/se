 /****** Door Mart van Blokland ***/
  /****** Create List ***/

  var ListContent = { 
    concept : {
      headerArray : ["Begrip", "SuperEconomics", "Kalk", "Vernooij", "#"], 
      fieldArray : ["name","defSE", "defKalk", "defVernooij", "freq"]
    }, 
    examproblem : {
      headerArray : ["Year", "Level", "Period", "Number"], 
      fieldArray : ["year", "level", "period", "number"]
    }, 
    lesson : {
      headerArray : ["Name", "Text"], 
      fieldArray : ["name", "text"]
    },

  }

  var ShowAll = function(showAllButton, addedEntity){ 
    if (showAllButton == undefined) var entity = addedEntity
    else var entity = $(this).attr('data-entity')
    $.get("cms/tableContainer")
    .done(function(res){
      $(".tableContainer").html(res);
      FillTable(entity, "{}")
    })
    .fail(function(b) {}); 
  }

  var DoQuery = function(){
      var form = $(this); 
      var query = form.find("input[name='query']").val(); 
      if (query == "") query = "{}"
      FillTable("concept", query); 
  }
  
  var FillTable = function(entity, query){
    var tableRequest = ListContent[entity] 
    $.post("cms/fillTable/" + entity + "/" + query, tableRequest)
    .done( function(res) {
      $('#entityListContent').html(res); 
      $('#docTable').tablesorter()
      return false; 
    })
    .fail(function(b) {}); 
  }

  /****** General functions ***/

  var timeout_handlesPreview = {}; 

  var LoadExpansion = function(){ 
    var entity = $(this).attr('data-entity');
    var id = $(this).attr('data-elementId');
    if (entity == "concept") GetConceptContainers(id);
    if (entity == "examproblem") GetExamContainers(id);

    // dit aangepast worden: Ik denk dat het beter is om FillConcept preview nooit via get call te laten vullen maar dit altijd te doen op basis van het form. Nu gebeurt het namelijk op 2 manieren via eerste DB call en daarna via FillConceptPreview(form). Als dan de trackform updata rond de 200 ms is, dan probeert hij het van het form te laden voordat het form bestaat. 
    TrackForm(id, entity); 
    $(this).attr('data-expanded', "true"); 
  }

  var TrackForm = function(id, entity){ 
    timeout_handlesPreview[id] = setInterval(function(){
      var form = $(".rowlong[data-elementId='" + id + "']").find("form.trackedForm")
      if (form.length == 0){
        clearTimeout(timeout_handlesPreview[id]);
      } else { 
        if (entity == 'concept') FillConceptPreview(form)
        if (entity == 'examproblem') FillExamPreview(form)
      }
    }, 5000)
  }

  var CloseExpansion = function(){ 
    var id = $(this).attr('data-elementId');
    var formContainer = $(".rowlong[data-elementId='" + id + "']").find(".formContainer");
    var previewContainer = $(".rowlong[data-elementId='" + id + "']").find(".previewContainer");
    formContainer.html(""); 
    previewContainer.html(""); 

    clearTimeout(timeout_handlesPreview[id]); 

    $(this).attr('data-expanded', "false"); 
  }



  var SaveForm = function(e){ 
    e.preventDefault();
    var entity = $(this).parents(".rowlong").attr('data-entity'); 
    var id = $(this).parents(".rowlong").attr('data-elementId'); 
    if (entity == "concept") SaveConcept($(this).parent('form'), id)
    if (entity =="examproblem") SaveExam($(this).parent('form'), id)

  }

  var RemoveCheck = function(e){ 
    e.preventDefault(); 
    $("#removeDocModal").modal("show"); 
    var rowlong = $(this).parents(".rowlong"); 
    var entity = rowlong.attr('data-entity'); 
    var id = rowlong.attr('data-elementId'); 
    $("#removeDocModal").find("#removeDocButton").attr("data-entity", entity); 
    $("#removeDocModal").find("#removeDocButton").attr("data-elementId", id);    
  }

  var RemoveDoc = function(){
    var entity = $(this).attr("data-entity"); 
    var id = $(this).attr("data-elementId"); 
    clearTimeout(timeout_handlesPreview[id]); 
    var rowshort = $(".rowshort[data-elementId='" + id + "']"); 
    var rowlong = $(".rowlong[data-elementId='" + id + "']"); 
    if (entity == "concept") {
      $.get("/cms/RemoveConcept/" + id)
      .done(function(res) { 
        rowshort.remove()
        rowlong.remove()
        alert(res); 
        return false
      }).fail(function (res) {
        alert(res)
      })
    } else if (entity == "examproblem"){ 
       $.get("/cms/RemoveExam/" + id)
      .done(function(res) { 
        rowshort.remove()
        rowlong.remove()
        alert(res); 
        return false
      }).fail(function (res) {
        alert(res)
      })
    }
  }

  var SetHeightEqual = function(check1, check2, set1, set2){ 
    var h1 = parseInt(check1.css('height')); 
    var h2 = parseInt(check2.css('height')); 
    var max = Math.max(h1,h2); 
    set1.css('height', max); 
    set2.css('height', max);
  }





  /*****Concept functions  ***/

  var GetConceptContainers = function(id){
    $.get("/cms/GetConceptContainers/" + id)
    .done(function(res){
      var formContainer = $(".rowlong[data-elementId='" + id + "']").find(".formContainer");
      var previewContainer = $(".rowlong[data-elementId='" + id + "']").find(".previewContainer");
      formContainer.html(res.form);
      previewContainer.html(res.preview);
      formContainer.find("input.tinymce").each(function(){
        tinymce.EditorManager.execCommand('mceAddEditor', true, $(this).attr("id"));
        tinyMCE.get($(this).attr("id")).setContent($(this).attr("value"));
      })
      SetHeightEqual(formContainer.children("form"), previewContainer.children("form"), formContainer, previewContainer);

      return false; 
    })
    .fail(function(b) {}); 
  }

  var GetConceptFromForm = function(form){ 
    var concept = {}
    concept.name =  form.find("input[name='name']").val();
    concept.defKalk =  form.find("input[name='defKalk']").val();
    concept.defVernooij = form.find("input[name='defVernooij']").val(); 

    var tinymceRandId = form.find("input[name='defSE']").attr('id'); 
    concept.defSE =  tinyMCE.get(tinymceRandId).getContent(); 

    var tinymceRandId = form.find("input[name='defDraft']").attr('id'); 
    concept.defDraft =  tinyMCE.get(tinymceRandId).getContent()

    concept.tagSE = []; 
    var tagSEGroup = form.find("input[name='tagSE']"); 
    tagSEGroup.each(function(index){
      if($(this).val()) concept.tagSE.push($(this).val()); 
    })
    return concept
  }

  var FillConceptPreview = function(form){ 
    var id = form.parents(".rowlong").attr('data-elementId'); 
    var concept = GetConceptFromForm(form); 
    $.post("cms/UpdateConceptPreview/", concept)
    .done(function(res){
      var previewContainer = form.parents(".rowlong").find(".previewContainer")
      previewContainer.html(res.preview); 
      var formContainer = form.parents(".rowlong").find(".formContainer"); 
      SetHeightEqual(form, previewContainer.children("form"), formContainer, previewContainer);
    })
    .fail(function(b) {});
  }

  var SaveConcept = function(form, id){
      var concept = GetConceptFromForm(form); 
      $.post("/cms/SaveConcept/" + id, concept)
      .done(function(res){
        alert(res)
        return false
      })
      .fail(function(b){})
  }

  var AddTagSEInput = function(){ 
    var formgroup = $(this).parent(".form-group"); 
    var span = formgroup.find("span")
    $("<input type='text' class='form-control' name='tagSE' placeholder='SE tag van het begrip' value=''>").insertBefore(span); 
  }

  var RemoveDefGroup = function(){ 
    var def = $(this).attr('data-def'); 
    $.get("/basic/requests/removeDefGroup/" + def)
    .done(function(res){
      location.reload()
      alert(res)
    })
    .fail(function(b) {}); 
  }

  var AddDefExcel = function(){ 
    var def = $(this).attr('data-def'); 
    $.get("/useExcel/addDef/" + def)
    .done(function(res){
      location.reload()
      alert(res)
    })
    .fail(function(b) {}); 
  }

  var UpdateFrequency = function(){ 
    var entity = $(this).attr('data-entity'); 
    $('#updataFrequencyModal').modal({
        backdrop: 'static',
        keyboard: false
    })

    $.get("/basic/requests/updateFrequency/" + entity)
    .done(function(){
      $('#updataFrequencyModal').modal('hide');
      ShowAll(undefined, entity)
      return false
    })
    .fail(function(){
      $(".tableContainer").html("<div>Update failed.</div>")
    })

  }

  /****** Exam functions  ***/

  var GetExamContainers = function(id){
    $.get("/cms/GetExamContainers/" + id)
    .done(function(res){
      var formContainer = $(".rowlong[data-elementId='" + id + "']").find(".formContainer");
      var previewContainer = $(".rowlong[data-elementId='" + id + "']").find(".previewContainer");
      formContainer.html(res.form);
      previewContainer.html(res.preview);
      formContainer.find("input.tinymce").each(function(){
        tinymce.EditorManager.execCommand('mceAddEditor', true, $(this).attr("id"));
        tinyMCE.get($(this).attr("id")).setContent($(this).attr("value"));
      })
      SetHeightEqual(formContainer.children("form"), previewContainer.children("form"), formContainer, previewContainer);

      return false; 
    })
    .fail(function(b) {}); 
  }

  var GetExamFromForm = function(form){ 
    var exam = {}
    exam.level =  form.find("input[name='level']").val();
    exam.year =  form.find("input[name='year']").val();
    exam.period =  form.find("input[name='period']").val();
    exam.number =  form.find("input[name='number']").val();

    exam.title =  form.find("input[name='title']").val();

    var tinymceRandId = form.find("input[name='contentText']").attr('id'); 
    exam.contentText =  tinyMCE.get(tinymceRandId).getContent(); 

    exam.questions = []; 
    var questionGroup = form.find("div.questionGroup"); 
    console.log(questionGroup.length)
    questionGroup.each(function(index){
      var qDiv = $(this); 
      var question = {}
      question.qNumber = qDiv.find("input[name='qNumber']").val();
      question.qQuestion = qDiv.find("input[name='qQuestion']").val();
      question.qPoints = qDiv.find("input[name='qPoints']").val();          
      exam.questions.push(question); 

    })
    return exam
  }

  var FillExamPreview = function(form){ 
    var id = form.parents(".rowlong").attr('data-elementId'); 
    var exam = GetExamFromForm(form); 
    $.post("cms/UpdateExamPreview/", exam)
    .done(function(res){
      var previewContainer = form.parents(".rowlong").find(".previewContainer")
      previewContainer.html(res.preview); 
      var formContainer = form.parents(".rowlong").find(".formContainer"); 
      SetHeightEqual(form, previewContainer.children("form"), formContainer, previewContainer);
    })
    .fail(function(b) {});
  }

  var SaveExam = function(form, id){

      var exam = GetExamFromForm(form); 
      $.post("/cms/SaveExam/" + id, exam)
      .done(function(res){
        alert(res)
        return false
      })
      .fail(function(b){})
  }

  var AddTagSEInput = function(){ 
    var formgroup = $(this).parent(".form-group"); 
    var span = formgroup.find("span")
    $("<input type='text' class='form-control' name='tagSE' placeholder='SE tag van het begrip' value=''>").insertBefore(span); 
  }
/*

  var InitNiceScroll = function(){ 
    $("html").niceScroll();
    $("html").getNiceScroll().hide();
  }*/



  /****** Events  ***/

  jQuery(document).ready(function( $ ) {
       $(document.body).on("click", ".showAll", ShowAll);
       $(document.body).on("click", ".rowshort[data-expanded='false']", LoadExpansion); 
       $(document.body).on("click", ".rowshort[data-expanded='true']", CloseExpansion);
       $(document.body).on("click", "button.tableFormButtonSave", SaveForm);   
       $(document.body).on("click", "button.tableFormButtonRemove", RemoveCheck);   
       $(document.body).on("click", ".removeDefGroup", RemoveDefGroup);   
       $(document.body).on("click", ".addDefExcel", AddDefExcel);   
       $(document.body).on("change", ".queryForm", DoQuery); 
       $(document.body).on("click", ".updateFrequency", UpdateFrequency); 
       $(document.body).on("click", "#removeDocButton", RemoveDoc); 
       $(document.body).on("click", ".addTagSEInput", AddTagSEInput); 

       // InitNiceScroll(); 
  });  
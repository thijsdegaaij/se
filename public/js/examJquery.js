var HideShowClickAbleAnswer = function(){ 
    var answerDiv = $('#' + $(this).attr('for'));
    if (answerDiv.css('display') === 'none') answerDiv.css('display', 'initial');
    else if (answerDiv.css('display') === 'inline') answerDiv.css('display', 'none'); 
}
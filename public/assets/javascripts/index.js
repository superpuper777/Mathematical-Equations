$('input[type=radio][name=equation]').change(function() {
  $('#frm1').toggle(
    $('input[type=radio][name=equation]:checked').val() == 1 ? true : false);
  )
  $('#frm1').toggle(
    $('input[type=radio][name=equation]:checked').val() == 0 ? true : false);
  )
})
.change();

jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$('#myform').validate({
  rules:{
    firstterm: {
      required: true,
      digits: true
    },
    secondterm: {
      required: true,
      digits: true
    }
  }
})

$('#myform').submit(function(){
  $.post({
    url: "/",
    dataType: 'json',
    data: {
      firstterm: $("#firstterm").val(),
      secondterm: $("#secondterm").val(),
      check: "linear"
    },
    success: function(data) { showLinearAnswer(data) }
  });
  return false;
});

function showLinearAnswer(answer) {
  var json={
    "answer_for_lin" : answer['result']
  };
  for(key in json)
  {
    if(json.hasOwnProperty(key))
    $('input[name='+key+']').val(json[key]);
  }

}

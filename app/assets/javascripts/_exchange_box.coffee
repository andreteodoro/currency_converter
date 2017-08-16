$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
        type: 'POST'
        dataType: 'json'
        data: {
          currency_from: $("#currency_from").val(),
          currency_to: $("#currency_to").val(),
          quantity: $("#quantity").val()
          }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, errorThrown) ->
          $('#result').val(data.value)
      return false;

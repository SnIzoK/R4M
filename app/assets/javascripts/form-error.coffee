$(document).ready ->
  $('.svg-button').on 'click', (e)->
    e.preventDefault()
    $('.input-field').addClass('error')
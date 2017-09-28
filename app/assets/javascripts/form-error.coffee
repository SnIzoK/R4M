$(document).ready ->
  $('.svg-button').on 'click', (e)->
    e.preventDefault()

    if $('.input-field').hasClass('disable')
      $('.input-field').addClass('error')

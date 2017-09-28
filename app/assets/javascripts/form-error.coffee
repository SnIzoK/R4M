$(document).ready ->
  $('.svg-button.prevent').on 'click', (e)->
    e.preventDefault()

    $('.input-field').each ->

      if $(this).hasClass('disable')
        $(this).addClass('error')

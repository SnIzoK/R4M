$document.ready ->

  $('.popup-btn').on "click", ->
    $(".popup-wrapper").addClass("visible")

  $.clickOut(".contact-us-form-wrap",
    ()->
      $(".popup-wrapper").removeClass('visible')
    {except: ".popup-btn, .contact-us-form-wrap"}
  )

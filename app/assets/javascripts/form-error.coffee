$(document).ready ->

$(document).on "submit", "#login-form", (e)->
  e.preventDefault()
  $form = $(this)
  $error_message = $form.find(".form-error-message")

  if !$error_message.length
    $form.prepend("<div class='form-error-message'>invalid login or password</div>")
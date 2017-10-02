$(document).ready(function() {
  
  //     c u s t o m     l a b e l s

  $('input').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });
  $('textarea').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });

  $(".accept-icon").on("click", function(){
    $(".checked").toggleClass("active")
  });


      // v a l i d a t e

  $("form.validable").each(function(){
    $(this).validate({
        rules: {
            name: {
              required: true,
              minlength: 3
            },
            email: {
              required: true,
              email: true
            },
        },
        submitHandler: function(form, e){
            e.preventDefault()
            var $form = $(form)
            var url = $form.attr("data-action") || $form.attr("action")
            var h = objectifyForm($form.serializeArray())
            var data = {}
            data[$form.attr("data-resource-name")] = h
            var method = $form.attr("method")

            $form.ajaxSubmit({
                url: url,
                data: data,
                type: method
            })

            $form.closest(".popup-wrapper").removeClass("visible")
            alert("Thanks for message. We will contact you shortly")
        }
  });
  })

});



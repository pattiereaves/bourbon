$ ->
  $(".info, .back-button").on("click", (e) ->
    e.preventDefault()
    $(".site-inner-wrapper").toggleClass("is-showing-description")
  )
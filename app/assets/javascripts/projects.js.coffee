# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ = jQuery

jQuery ->

  $('.projects').hover(
    -> $(this).css("border", "1px solid #aaa")
    -> $(this).css("border", "1px solid #ccc")
  )

  $('.nav-button').click ->
    $('#add-project-form').show()
    $('#modal-overlay').show()

  $('#modal-overlay').click ->
    $('#add-project-form').hide()
    $('#modal-overlay').hide()

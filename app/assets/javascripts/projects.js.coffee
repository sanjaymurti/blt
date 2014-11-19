# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ = jQuery

ready = ->

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

  $('#task_task').blur ->
    $('#new_task').submit()

  $('.checkbox').click ->
    $('#task-' + this.id).css("text-decoration", "line-through")
    $('#task-' + this.id).css("color", "#dddddd")
    $('#task-' + this.id).fadeOut()
    $.ajax
      type: "DELETE",
      url: "/tasks/" + this.id
      dataType: "json"
      _method : "delete"

$(document).ready(ready)
$(document).on('page:load', ready)
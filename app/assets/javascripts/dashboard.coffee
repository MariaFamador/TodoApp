# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.datepicker').pickadate();

  $('.today-btn').on 'click', ->
    dueDateInput = $('<input />')
      .attr('type', 'hidden')
      .attr('name', 'task[due_date]')
      .attr('value', moment().startOf('day').calendar())
      .appendTo('#new_task')

  $('.tomorrow-btn').on 'click', ->
    dueDateInput = $('<input />')
      .attr('type', 'hidden')
      .attr('name', 'task[due_date]')
      .attr('value', moment().startOf('day').add(1, 'days').calendar())
      .appendTo('#new_task')


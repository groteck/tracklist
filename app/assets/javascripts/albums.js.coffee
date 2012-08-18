# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#album_token_inputs').tokenInput '/tags.json',
    {theme: 'facebook', tokenValue: 'name',preventDuplicates: true, prePopulate: $('#album_token_inputs').data('load') }

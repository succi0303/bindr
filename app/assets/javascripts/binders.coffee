# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  if gon
    $('input.tokenfield').tokenfield({
      autocomplete: {
        source: gon.available_tags,
        delay: 100
      },
      ShowAutocompleteOnFocus: true
    });
  else
    $('input.tokenfield').tokenfield();

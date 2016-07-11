//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  $(document).on('change', 'input[type=checkbox]', function(){
    $(this).closest('div[data-id*=task]').find('form').submit();
  });
});


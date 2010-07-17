
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

// definiowanie nowej funkcji dla jQuery
jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

// ładowanie funkcji dla formularza po załadowaniu dokumentu
$(document).ready(function() {
	$("form#new_shortcut").submitWithAjax();
});
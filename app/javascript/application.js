// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require semantic-ui
import "@hotwired/turbo-rails";
import "controllers";

$(document).on("turbolinks:load", function () {
  $(".message .close").on("click", function () {
    $(this).closest(".message").transition("fade");
  });
});

$(document).on("turbo:load", function () {
  if ($("#messages").length > 0) {
    $("#messages").scrollTop($("#messages")[0].scrollHeight);
  }
});

$(document).on("turbolinks:load", function () {
  // Listen for the "Enter" key press in the input field
  $("#message_body").on("keydown", function (event) {
    if (event.keyCode === 13) {
      // Prevent the default line break behavior
      event.preventDefault();

      // Submit the form
      $(this).closest("form").submit();
    }
  });
});

import "channels";

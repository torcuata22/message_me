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

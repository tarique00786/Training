// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require activestorage
require jquery
require refile
require rails-ujs
require_tree
require jquery-fileupload/basic
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { DirectUpload } from "@rails/activestorage"
Rails.start()
Turbolinks.start()
ActiveStorage.start()
import "direct_uploads"

$(document).ready(function(){
  $('.destroy').on('click', function(){
      $.ajax({
        url: "/delete_student/id", 
        type: "DELETE",
        success: function(r){

        }
      });
  });
});
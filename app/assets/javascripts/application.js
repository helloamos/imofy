// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs

//= require bootsy

//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require toastr
//= require rails.validations
//= require intlTelInput
//= require bracketplusadmin-14/js/bracket
//= require bracketplusadmin-14/js/dashboard
//= require bracketplusadmin-14/js/map.shiftworker
//= require bracketplusadmin-14/js/ResizeSensor
// require bracketplusadmin-14/js/echarts/echarts.min

//= require social-share-button
// require_tree .
$(function() {
  $('#pictureInput').on('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('.thumbnail-preview').html(img);
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
});

$(function(){
$("#pictureInputLink").on('click', function(e){
    e.preventDefault();
    $("#pictureInput:hidden").trigger('click');
});
});

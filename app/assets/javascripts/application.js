// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function fadeOutImage(obj){
  $(".product").removeClass("animated fadeInDown fadeInUp fadeOutUp fadeOutDown");
  $(".product").addClass("animated " + obj);
  getShoe();
  setTimeout(function(){
    showProduct(obj);
  }, 1000);
}

function showProduct(obj){
  $(".product").removeClass("animated fadeOutUp fadeOutDown");
  $(".product").addClass("animated " + (obj == "fadeOutDown" ? "fadeInDown" : "fadeInUp"));
}

function getShoe(){
  $.ajax({
    url: '/users/get_shoe',
    type:   'GET',
    dataType: 'json',
    success: function (data) {
      $(".shoe-title").children("a").attr("href", data[1]);
      $(".shoe-title").children("a").text(data[0]);
      $('.shoe-image').attr('src', data[2]);
    },
    error: function (response) {
      $document.write("No shoes for you");
    }
  });
}

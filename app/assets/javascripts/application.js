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
//= require foundation
//= require_tree .

$(function(){ 
	$(document).foundation(); 
	$(".prompt.button").click(function(){
		$("#prompt_space").text();
		$.ajax({
			type: "GET",
			url: "/get_prompts",
			dataType: 'json'
		}).done(function(response) {
			console.log(response)
			$("#prompt_space").html(response["text"]);
		})
	});

	$(".category.button").click(function(){
		$("#category_prompt_space").text();
		var path = window.location.pathname;
		var chomp = path.lastIndexOf('/');
		var id = path.substring(chomp + 1);
		$.ajax({
			type: "GET",
			url: "/get_category_prompts",
			dataType: 'json',
			data: { "category_id": id }
		}).done(function(response) {
			console.log(response)
			$("#category_prompt_space").html(response["text"]);
		})
	});
});	

// pass id as data to the ajax request
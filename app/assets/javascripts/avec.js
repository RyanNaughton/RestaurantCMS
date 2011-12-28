//= require jquery
//= require jquery_ujs
//= require_tree ./avec

$(document).ready(function() {
    $("body").ezBgResize({
        img : "assets/avec/picture0.jpg"
    });
	$('#navigation li').hover(function () {
		$(this).css('background-color', '#FFF').children().css('color', '#000');
	},
    function () {
		$(this).css('background-color', '').children().css('color', '');
	}).click(function (e) {
		e.preventDefault();
		$.get("/" + $(this).text().trim().toLowerCase(),
			  function(data) {
				  $(".bottom_right").fadeOut(400,
											 function(){
												 $(this).remove();
												 $(data).hide().appendTo("#right").fadeIn(400).jScrollPane();
											 });
  			  });
	});
	
  	$("#BRR div.Event").hover(function () {
		// $(this).children('.delete_button_parent').hide();
		//alert("this works!");
	},
    function () {
		$(this).children('.delete_button_parent').show();
	});

	
	var page = 2;
	$('.scroll_pane')
		.bind('jsp-arrow-change',
			  function(event, isAtTop, isAtBottom, isAtLeft, isAtRight) {
				  if (isAtBottom) $(this).trigger('scroll_hit_bottom');
			  })
		.bind('scroll_hit_bottom',
			  function () {				  
				  var api = $(this).data('jsp');
				  $.get("/events", {page: page++}, function(data){
					  api.getContentPane().append(data);
					  api.reinitialise();
				  }, "html");
			  })
		.jScrollPane();
	
	$(".Event").bind("keydown", function () {
		var div = $(this);
		var data = { dom_id: div.attr('id') };
		div.children('[contenteditable="true"]').each(function (index, elem) {
			elem = $(elem);
			data[elem.attr('data-attributename')] = elem.text();
		});
		$.post('/event', 
			   data,
			   function (response) {
				   console.log(response);
			   },
			   'json');
	});

});

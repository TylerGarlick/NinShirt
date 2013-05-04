// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){
	$('[title!=]').qtip({
		show: "mouseover",
		hide: "mouseout",
		style: {
			name: 'dark',
			tip: 'topMiddle'
		},
		 position: {
      corner: {
         target: 'bottomMiddle'
      },
			adjust: { scroll: true }
    }
	});

	$('button[href], input[href]').click(function(){
		window.location = $(this).attr('href');
	});

	$('.flash').delay(5000).slideToggle();
	
});
// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var globals = function(spec) {
	var that = {};

	// Initialization code
	$('.modal').jqm({modal: true});
	$('.flash').hide().slideDown().delay('5000').slideUp();

	$('#showCart').hover(function(){
		$('.cart').fadeIn();
	}, function(){
		$('.cart').fadeOut();
	});

	$('#loginButton').click(function(){
		that.showModal('#login');
	});

	$('button[href]').click(function() {
		window.location = $(this).attr('href');
	});

	// Methods
	that.showModal = function(selector) {
		$(selector).jqmShow();
	};

	that.hideModal = function(selector) {
		$(selector).jqmHide();
	};

	that.showErrorModal = function(errorMessage) {
		that.showModal('#error-message-box');
		$('#error-message').html(errorMessage);
	};

	that.ajaxError = function(jqXHR, textStatus, errorThrown, callback) {
		that.showErrorModal(error.TextStatus);
		callback(textStatus, errorThrown);
	};

	that.ajaxSuccess = function(data, textStatus, jqXhr, callback) {
		callback(data);
	};

	that.blockUI = function(message) {
		$.blockUI({ css: {
			border: 'none',
			padding: '15px',
			backgroundColor: '#000',
			'-webkit-border-radius': '10px',
			'-moz-border-radius': '10px',
			opacity: .5,
			color: '#fff',
			message: message
		} });
	};

	that.unBlockUI = function(){
		$.unblockUI();
	};

	that.processAjax = function(url, type, data, successCallback, errorCallback) {
		that.blockUI();
		$.ajax({
			type: type,
			url: url,
			data: data,
			success: function(data) {
				that.unBlockUI();
				successCallback(data);
			},
			error: function(textStatus, errorThrown) {
				that.unBlockUI();
				errorCallback(textStatus, errorThrown);
				that.ajaxError(textStatus);
			}
		});
	};

	return that;
};


$(function() {
	var g = globals();
});
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div style="margin: 50px 50px">
		<label for="product_search">Product Search: </label> <input
			id="product_search" type="text" data-provide="typeahead">
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-typeahead.js"></script>
	<script src="js/underscore-min.js"></script>

	<script>
		$(document).ready(
				function($) {
					// Workaround for bug in mouse item selection
					$.fn.typeahead.Constructor.prototype.blur = function() {
						var that = this;
						setTimeout(function() {
							that.hide()
						}, 250);
					};

					var products = [ {
						id : 0,
						name : "Deluxe Bicycle",
						price : 499.98
					}, {
						id : 1,
						name : "Super Deluxe Trampoline",
						price : 134.99
					}, {
						id : 2,
						name : "Super Duper Scooter",
						price : 49.95
					} ];

					var that = this;

					$('#product_search').typeahead({
						source : function(query, process) {
							$('#product').hide();
							var results = _.map(products, function(product) {
								return product.id + "";
							});
							process(results);
						},

						matcher : function(item) {
							return true;
						},

						highlighter : function(id) {
							var product = _.find(products, function(p) {
								return p.id == id;
							});
							return product.name + " ($" + product.price + ")";
						},

						updater : function(id) {
							var product = _.find(products, function(p) {
								return p.id == id;
							});
							that.setSelectedProduct(product);
							return product.name;
						}

					});

					$('#product').hide();
					this.setSelectedProduct = function(product) {
						$('#product').html(
								"Purchase: <strong>" + product.name + " ($"
										+ product.price + ")</strong>").show();
					}
				})
	</script>

	</script>

</body>
</html>
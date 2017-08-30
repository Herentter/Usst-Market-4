<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
	.accordion {
	border:1px solid red;
 	width: 100%;
 	max-width: 360px;
 	margin: 30px auto 20px;
 	background: #FFF;
 	-webkit-border-radius: 4px;
 	-moz-border-radius: 4px;
 	border-radius: 4px;
 }

.accordion .link {
	cursor: pointer;
	display: block;
	padding: 15px 15px 15px 42px;
	color: #4D4D4D;
	font-size: 14px;
	font-weight: 700;
	border-bottom: 1px solid #CCC;
	position: relative;
	-webkit-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

.accordion li:last-child .link {
	border-bottom: 0;
}

.accordion li i {
	position: absolute;
	top: 16px;
	left: 12px;
	font-size: 18px;
	color: #595959;
	-webkit-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

.accordion li i.fa-chevron-down {
	right: 12px;
	left: auto;
	font-size: 16px;
}

.accordion li.open .link {
	color: #b63b4d;
}

.accordion li.open i {
	color: #b63b4d;
}
.accordion li.open i.fa-chevron-down {
	-webkit-transform: rotate(180deg);
	-ms-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	transform: rotate(180deg);
}

/**
 * Submenu
 -----------------------------*/
 .submenu {
 	display: none;
 	background: #444359;
 	font-size: 14px;
 }

 .submenu li {
 	border-bottom: 1px solid #4b4a5e;
 }

 .submenu a {
 	display: block;
 	text-decoration: none;
 	color: #d9d9d9;
 	padding: 12px;
 	padding-left: 42px;
 	-webkit-transition: all 0.25s ease;
 	-o-transition: all 0.25s ease;
 	transition: all 0.25s ease;
 }

 .submenu a:hover {
 	background: #b63b4d;
 	color: #FFF;
 }
</style>
</head>
<body>
	<ul id="accordion" class="accordion">
		<li>
			<div class="link"><i class="fa fa-paint-brush"></i>Diseño web<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Photoshop</a></li>
				<li><a href="#">HTML</a></li>
				<li><a href="#">CSS</a></li>
				<li><a href="#">Maquetacion web</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-code"></i>Desarrollo front-end<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Javascript</a></li>
				<li><a href="#">jQuery</a></li>
				<li><a href="#">Frameworks javascript</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-mobile"></i>Diseño responsive<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Tablets</a></li>
				<li><a href="#">Dispositivos mobiles</a></li>
				<li><a href="#">Medios de escritorio</a></li>
				<li><a href="#">Otros dispositivos</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>Posicionamiento web<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Google</a></li>
				<li><a href="#">Bing</a></li>
				<li><a href="#">Yahoo</a></li>
				<li><a href="#">Otros buscadores</a></li>
			</ul>
		</li>
	</ul>



<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript">
    $(function() {
    	var Accordion = function(el, multiple) {
    		this.el = el || {};
    		this.multiple = multiple || false;

    		// Variables privadas
    		var links = this.el.find('.link');
    		// Evento
    		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
    	}

    	Accordion.prototype.dropdown = function(e) {
    		var $el = e.data.el;
    			$this = $(this),
    			$next = $this.next();

    		$next.slideToggle();
    		$this.parent().toggleClass('open');

    		if (!e.data.multiple) {
    			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
    		};
    	}	

    	var accordion = new Accordion($('#accordion'), false);
    });
    </script>
</body>
</html>
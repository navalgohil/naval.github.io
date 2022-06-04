<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animated Off-canvas Side Menu Demo</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style>
#menu {
  position: fixed;
  background-color: #222;
  height: 100%;
  z-index: 10;
  width: 280px;
  color: #bbb;
  top: 0;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  transition: all 0.3s ease;
  opacity: 1;
  font-family: 'Source Sans Pro', sans-serif;
}

#menu ul {
  list-style: none;
  margin-top: 0;
  padding: 0
}

#menu ul li { border-bottom: 1px solid #2a2a2a; }

#menu>ul>li>a { border-left: 4px solid #222; }

#menu ul li a {
  color: inherit;
  font-size: 16px;
  display: block;
  padding: 8px 0 8px 7px;
  text-decoration: none;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  transition: all 0.3s ease;
  font-weight: 600;
}

#menu ul a i {
  margin-right: 10px;
  font-size: 18px;
  margin-top: 3px;
  width: 20px;
}

#menu ul a i[class*='fa-caret'] { float: right; }

#menu ul a:hover,
#menu ul a.active {
  background-color: #111;
  border-left-color: #FFCC33;
  color: #FFCC33;
}

#menu ul a:hover i:first-child { color: #FFCC33; }

/* Submenu */

#menu ul li a.active+ul { display: block }

#menu ul li ul {
  margin-top: 0;
  display: none;
}

#menu ul li ul li { border-bottom: none; }

#menu ul li ul li a { padding-left: 30px; }

#menu ul li ul li a:hover { background-color: #1A1A1A; }

/* /Submenu */


/* Cuando este a la Izq, para esconderlo posicionarlo a la Izq a -width */

.left { left: -280px; }

.show { left: 0; }

#showmenu {
  margin-left: 100%;
  position: absolute;
  top: 0;
  padding: 6px 10px 7px 10px;
  font-size: 1.3em;
  color: #FFCC33;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  transition: all 0.3s ease;
}

#container { padding: 50px; }
</style>
</head>

<body>
<!-- menu vertical -->
<nav id="menu" class="left">
  <ul>
    <li><a href="#" class="active"><i class="fa fa-home"></i>Home</a></li>
    <li><a href="#"><i class="fa fa-info-circle"></i>About</a></li>
    <li> <a href="#"><i class="fa fa-laptop"></i>Services <i class="fa fa-caret-down"></i></a>
      <ul>
        <li> <a href="#"><i class="fa fa-laptop"></i>Services1 <i class="fa fa-caret-down"></i></a>
	      <ul>
	        <li><a href="#">Service11</a></li>
	        <li><a href="#">Service12</a></li>
	        <li><a href="#">Service13</a></li>
	      </ul>
	    </li>
        <li><a href="#">Service2</a></li>
        <li><a href="#">Service3</a></li>
        <li> <a href="#"><i class="fa fa-laptop"></i>Services4 <i class="fa fa-caret-down"></i></a>
	      <ul>
	        <li><a href="#">Service41</a></li>
	        <li><a href="#">Service42</a></li>
	        <li><a href="#">Service43</a></li>
	      </ul>
	    </li>
      </ul>
    </li>
    <li><a href="#"><i class="fa fa-phone"></i>Contact</a></li>
  </ul>
  <a href="#" id="showmenu"> <i class="fa fa-align-justify"></i> </a> </nav>
<!-- /menu vertical --> 

<!-- contenido de pagina, realmente no importa -->
<div id="container">
  <h2>Animated Off-canvas Side Menu Demo</h2>
 
</div>
<!-- /contenido de pagina, realmente no importa --> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script>
$("#showmenu").click(function(e){
			e.preventDefault();
			$("#menu").toggleClass("show");
		});
		$("#menu a").click(function(event){
			event.preventDefault();
			if($(this).next('ul').length){
				$(this).next().toggle('fast');
				$(this).children('i:last-child').toggleClass('fa-caret-down fa-caret-left');
			}
		});
</script>


</body>
</html>

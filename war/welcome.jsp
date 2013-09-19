<html>
<head>
<title>Kick start your dream here!</title>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
	<script type="text/javascript" src="/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="/jquery.textarea.js"></script>
	<script type="text/javascript" src="/mainScript.js"></script>
	<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/stylesheet/main.css">
	<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
	<script>
	jQuery(document).ready(function () {
	$("textarea.tabby").tabby();
	});
	</script>
</head>

<body>
	<div id="se-header">
		<div id="header-container">
			<div class="row">
				<a href="/">
				<div class="span2 " style="width:170px;">
					<br/>
					<div id="kick"><b>Kick</b></div>
					<div id="starter"><b>starter</b></div>
				</div>
				</a>
				<div class="span1" style="width:90px;">
					<div id="what-is-kick"><b>What is <br/>Kickstarter?</b><br/>
					</div>
				</div>
				<div id="header-right">
				</div>
				<div class="span1" style="width:80px;">
					<div id="discover"><b style="color:#0096bb;;">Discover</b><br/> great project
					</div>
				</div>
				<div id="header-right">
				</div>
				<a href="/start">
					<div class="span1" style="width:70px;">
						<div id="start-project"><b style="color:#0096bb;;">Start</b> <br/>your project
						</div>
					</div>
				</a>
				<div id="header-right">
				</div>
				<div class="span3" style="width:210px;">
					<div style="margin-top:-10px;"><br/>
					<form>
						<div id="search-box" style="padding:5px;">
							<i class="icon-search icon-large"style="margin-left:4px;color:#d0d5cb;"></i>
							
								<input type="text" style="margin-top:2px;"class="resized-textbox" name="search" value="search ">
							
							<br/>
						</div>
					</form>
					</div>
				</div>
				<div id="header-right">
				</div>
				<div class="span3">

						{%if user %}
					<div id="user-panel">	
						<div >
							<div id="message-box"><i class="icon-envelope icon-2x" title="inbox"></i>
							</div>
							<div id="activity-box"><i class="icon-globe icon-2x" title="activity"></i>
							</div>
							<div class="btn-group open" style="margin-top:20px;">
								<button class="btn dropdown-toggle" data-toggle="dropdown"><img src="{{ user.avatar }}" width="20px;" height="20px;"> &nbsp; Me <span class="caret"></span></button>
								<ul class="dropdown-menu">									
									<li><a href="#">{{ user.fullname }}</a></li>
									<li class="divider"></li>
									{% if user.project_hold %}
									<li style="text-align:center"><a href="{{ user.project_link }}">{{ user.project_hold }}</a></li>
									<li class="divider"></li>
									{% endif %}
									<li><a href="#">My profile</a></li>
									<li><a href="#">My backer history</a></li>
									<li><a href="#">My starred project</a></li>
									 <li class="divider"></li>
								  <li><a href="/logout">Log out!</a></li>
								</ul>
						</div>
					</div>

						{% else %}
							<br/>
							<a href="/regis">sign up</a> &nbsp;&nbsp;&nbsp; <a href="/regis">login</a>
						{% endif %}
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	welcome!
	
	
</body>

</html>
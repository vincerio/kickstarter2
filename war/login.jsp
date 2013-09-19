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

						<% if (session.getAttribute("currentUser") != null) { %>
					<div id="user-panel">	
					  
							<div >
							<div id="message-box"><i class="icon-envelope icon-2x" title="inbox"></i>
							</div>
							<div id="activity-box"><i class="icon-globe icon-2x" title="activity"></i>
							</div>
							<div class="btn-group open" style="margin-top:20px;">
								<button class="btn dropdown-toggle" data-toggle="dropdown"><img src="" width="20px;" height="20px;"> &nbsp;<%= session.getAttribute("currentUser") %> <span class="caret"></span></button>
								<ul class="dropdown-menu">									
									<li><a href="#"><%= session.getAttribute("currentUser.project_hold") %></a></li>
									<li class="divider"></li>
									
									<li style="text-align:center"><a href="#"></a></li>
									<li class="divider"></li>
									
									<li><a href="#"></a><%= session.getAttribute("currentUser.userkey") %></li>
									<li><a href="#"></a></li>
									<li><a href="#"></a></li>
									 <li class="divider"></li>
								  <li><a href="/logout">Log out!</a></li>
								</ul>
							</div>
						</div> 
					<% 	  
					  }
					%>

<% if (session.getAttribute("currentUser") == null) { %>
						
							<br/>
							<a href="/login.jsp">sign up</a> &nbsp;&nbsp;&nbsp; <a href="/login.jsp">login</a>
<% 	   } %>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<div id="regisform">
	<div id="regisform-inner">
		<div id="loginbox">Log in<br/>
			<b>Please log in to continue.</b></br><br/>
			<form method="post" action="login">EMAIL<br/>
			<input class="formbox" type="text" name="login_email" value="EMAIL" /><br/>
			PASSWORD<br/>
			<input class="formbox" type="password" name="login_password" value="PASSWORD"/><br/>
			<br/>
			<p style="color:red;">
			
			</p>
			<input id="logmein-submit" type="submit" value="Log me in!">
			
			</form>
		</div>
		<div id="regisbox">
			New to kick starter?<br/>
			A kickstarter account is required to continue.<br/>
			<br/>
			<form method="post" action="regis">
			FULLNAME<br/>
			<input class="formbox" type="text" name="fullname" value="FULLNAME" /><br/>
			EMAIL<br/>
			<input class="formbox" type="text" name="email" value="EMAIL" /><br/>
			RE-ENTER EMAIL<br/>
			<input class="formbox" type="text" name="re_email" value="RE-ENTER EMAIL" /><br/>
			PASSWORD<br/>
			<input class="formbox" type="password" name="password" value="PASSWORD" /><br/>
			RE-ENTER PASSWORD<br/>
			<input class="formbox" type="password" name="re_password" value="RE-ENTER PASSWORD" /><br/>
			<small>by signing up,<br/> you agree to our <a href="#">term of use</a> and <a href="#">private policy.</a></small><br/><br/>
			
			<input id="logmein-submit" type="submit" value="Sign me up!">
			</form>
			
		</div>
		<div id="facebookbox">
			<a href="/facebooklogin"><div id="facebooklogin" > &nbsp;<i class="icon-facebook icon-large"> &nbsp;&nbsp; LOG IN WITH FACEBOOK</i></div></a>
		</div>
	</div>
</div>
	
	
</body>

</html>
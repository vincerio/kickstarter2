<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import='com.google.appengine.api.datastore.PreparedQuery' %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>    
<html>
  <head>
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
		<div id="warning-bar" style="width:100%;height:30px;background-color:black;color:white;margin-left:auto;margin-right:auto;text-align:center">
			The apps just simulates how www.kickstarter.com works | Only used for education | Non-profit | will delete in 27 Sep 2013
		</div>
		<div id="header-container">
			<div class="row">
				<a href="/">
					<div class="span2 " style="width:170px;">
						<br/>
						<div id="kick"><b>Kick</b></div>
						<div id="starter"><b>starter</b></div>
					</div>
				</a>
				<a href="/whatis.jsp">
					<div class="span1" style="width:90px;">
						<div id="what-is-kick"><b>What is <br/>Kickstarter?</b><br/>
						</div>
					</div>
				</a>
				<div id="header-right">
				</div>
				<a href="/browser.jsp">
				<div class="span1" style="width:80px;">
					<div id="discover"><b style="color:#0096bb;;">Discover</b><br/> great project
					</div>
				</div>
				</a>
				<div id="header-right">
				</div>
				<a href="/project.jsp">
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


	<div>
		<div id="banner">
			
			<div id="banner-center" style="background-image:url('/header.jpg');">
				<div id="banner-word">
				<h1>Bring Creativity to life</h1><br/>
				<br/>
				curious how Kickstarter work?
				<br/>
				<br/>
				<a href="/whatis"><div id="learnmore">learn more</div></a>
				<br/>
				<br/>
				
				<p style="font-size:14px;"><b>Mikano lanched his project on Kickstarter.</b></p>
				</div>
			</div>
		
		</div>
		<div id="staff-pick">
			<div id="staff-pick-inner">
				<div class="row">
					<div class="span10">
		<%
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query q = new Query("Project"); 
		PreparedQuery pq = datastore.prepare(q);
		for (Entity result : pq.asSingleEntity()) {
			  
			  String project_title = (String) result.getProperty("project_title");
			  String project_image = (String) result.getProperty("project_image");		  
			  String project_owner = (String) result.getProperty("project_owner");
			  String project_desc = (String) result.getProperty("project_desc");
			  String project_link = (String) result.getProperty("project_link");
			  String project_video = (String) result.getProperty("project_video");
			  int funding_goal = (int) result.getProperty("funding_goal");
			  int project_earned = (int) result.getProperty("project_earned");
			  int project_duration = (int) result.getProperty("project_duration");
			  
		
		%>
				<a href="<%= project_link %>">
				<div id="project_review_box">
				<div style="float:left;margin-right:20px;">
					<img src="<%= project_image %>" width="340px;" height="250px;" ></img>
				</div>
				<div id="project-message-review"><h4 style="color:#08c;"></h4>
				<br/>by <%= project_owner %><br/>
				<br/><%= project_desc %><br/>

				</div>
				</a> 
				
				</div>
					</div>
					<div id="staff-pick-divine"></div>

				</div>
			</div>
			<div><h1>Recently add Project!</h1>
			</div>
		</div>

	</div>

	
	<div id="se-tailer">
		<div id="se-sitemap">
			<div id="sitemap-inner">
				<div class="row" style="margin:10px;">

				<div class="span4">
				<div id="breakline"></div>
				<i class="icon-coffee"></i> Discover<br/>
				<div id="breakline"></div>
					<div class="span1">Art<br/> Comics Dance Design Fashion Film&Video Food</div>
					<div class="span1" style="width:80px;">Game Music Photography Publishing Technology Theater</div>
					<div class="span1" style="width:100px;">Staff Pick Popular<br/> Recent launched</div>
				</div>
				<div class="span2">
				<div id="breakline2"></div>
				<i class="icon-book"></i> &nbsp;Create<br/>
				<div id="breakline2"></div>
					<div class="span1" style="width:90px;">Start a project</div>
				
				</div>
				<div class="span2">
				<div id="breakline2"></div>
				&nbsp;<i class="icon-question"></i> &nbsp;About<br/>
				<div id="breakline2"></div>
					<div class="span1" style="width:120px;">What is kickstarter?</div>
				
				</div>
				
				</div>
				<div id="endline">
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
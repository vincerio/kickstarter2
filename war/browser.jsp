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
				<div class="span1" style="width:80px;">
					<div id="discover"><b style="color:#0096bb;;">Discover</b><br/> great project
					</div>
				</div>
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
<div id="project_browser">

	<%  
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query q = new Query("Project"); 
		PreparedQuery pq = datastore.prepare(q);
		for (Entity result : pq.asIterable()) {
			  String project_image = (String) result.getProperty("project_image");
			  String project_title = (String) result.getProperty("project_title");
			  String project_desc = (String) result.getProperty("project_desc");
			  String project_video = (String) result.getProperty("project_video");
			  int funding_goal = (int) result.getProperty("funding_goal");
			  int project_earned = (int) result.getProperty("project_earned");
			  int project_duration = (int) result.getProperty("project_duration");


			  System.out.println(" %>
			  <div id="project_browser_inner" style="margin-bottom:20px;">
			  <a href="/start?id=<% result.getKey() %>">
			  <div id="project_review_box" style="background-color:pink">
			  
				<div style="float:left;margin-right:20px;">
					<iframe width="340px" height="250px" src="//www.youtube.com/embed/<% project_video %>" frameborder="0" allowfullscreen>
					</iframe>
				</div>
				<div id="project-message-review"><h4 style="color:#08c;"><% project_title %></h4>
				<br/>by <% project_owner %><br/>
				<br/> <% project_desc %><br/>
				<div id="project_progress_box">
					<div id="project_progress_bar" >
						<div id="progress_life" style="width:,<%  3.4 * project_earned / project_goal * 100 %>px;">
						</div>
					</div><br/>
					<div id="project_already_fund"><%  ( project_earned / project_goal *100 )  %>%
					<br/>funded
					</div>
					<div id="project_progress_divine"></div>
					<div id="project_already_pledge">$ <% project_earned %>
					<br/>pledge
					</div>
					<div id="project_progress_divine"></div>
					<div id="project_already_go"><% funding_duration  %>
					<br/>days to go
					</div>
				</div>
				</div>
				</a>
			  <% ");
			}
	%>

	
	
</div>

		</div>

	</div>



	</body>
</html>
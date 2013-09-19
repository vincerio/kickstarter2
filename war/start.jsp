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
	
	<% 
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    Filter KeyFilter =
    new FilterPredicate("Key",
                        FilterOperator.EQUAL,
                        projectKey);
	Query q = new Query("Project").setFilter(KeyFilter);; 
	PreparedQuery pq = datastore.prepare(q);
	for (Entity result : pq.asIterable()) {
		  String project_image = (String) result.getProperty("project_image");
		  String project_owner = (String) result.getProperty("project_owner");
		  String project_title = (String) result.getProperty("project_title");
		  String project_desc = (String) result.getProperty("project_desc");
		  String project_desc = (String) result.getProperty("project_description");
		  String project_risks = (String) result.getProperty("project_risks");
		  String project_backer = (String) result.getProperty("project_backer");
		  int funding_goal = (int) result.getProperty("funding_goal");
		  int project_earned = (int) result.getProperty("project_earned");
		  int project_duration = (int) result.getProperty("project_duration");
	%>
	<div id="project-content-display">
	<div id="project-content-display-inner" >
		<div id="project-content-display-header">
			<h1> <%= project_title %></h1><br/>
			by <%= project_owner %> 
		</div>
		<div id="project-content-display-detail">
			<div id="project-left">
				<div id="project-image-box">
					<img src=" <%= project_image %>"></img>
				</div>	
				<br/><br/>
				<h4 style="text-align:center"> <%= project_desc %> </h4><br/><br/>
				<div style="width:630px;margin-left:auto;margin-right:auto"> <%= project_description %><br/><br/>
				<h3>Risk and challenge!</h3><br/>
				<%= project.project_risks %> 
				</div>	
				
			</div>
			<div id="project-right">
				<div id="project-status">
				<h1><%= project.project_backer %>}}</h1><b>&nbsp;&nbsp;&nbsp;backers</b><br/>
				<h1>$ <%=  project.project_earned %>}}</h1><b>&nbsp;&nbsp;&nbsp;pledge of ${{ project.funding_goal }} goal</b><br/>
				<h1> <%=  project.funding_duration %>}}</h1><b>&nbsp;&nbsp;&nbsp;days to go</b><br/><br/><br/>
				<a href="/backproject?id=<%= result.key()%>"><div id="back_project_box">Back this Project
				</div></a>
				

				</div>

			</div>
		</div>
	</div>
</div>
	
	
	</body>

</html>
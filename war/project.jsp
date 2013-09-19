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
<html>
<head>
<title>Kick start your dream here!</title>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
	<script type="text/javascript" src="/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="/jquery.textarea.js"></script>
	<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/stylesheet/main.css">
	<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	

		<script>
$(document).ready(function(){

   $("#guideline").click(function(){
		//content
		$("#guideline-content").show();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").show();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").hide();

   });
   
   $("#basics").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").show();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").show();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").hide();

   });
   
   $("#rewards").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").show();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").show();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").hide();

		
   });
   
   $("#story").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").show();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").show();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").hide();

   });
   
    $("#about-you").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").show();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").show();
		$("#account-header").hide();
		$("#review-header").hide();

   });
   
    $("#account").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").show();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").show();
		$("#review-header").hide();
		
		

    });
   
    $("#account1").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").show();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").show();
		$("#review-header").hide();
		
		

   });
   
    $("#review").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").show();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").show();

   });
   
    $("#preview").click(function(){
		$("#guideline-content").hide();
		$("#basic-content").hide();
		$("#reward-content").hide();
		$("#story-content").hide();
		$("#about-you-content").hide();
		$("#account-content").hide();
		$("#review-content").hide();

		//header
		$("#guideline-header").hide();
		$("#basic-header").hide();
		$("#reward-header").hide();
		$("#story-header").hide();
		$("#about-you-header").hide();
		$("#account-header").hide();
		$("#review-header").hide();

   });
   
	$("#add_more_box").click(function(){
		$("#reward-box2").show();
		$("#add_more_box2").show();
		$("#add_more_box").hide();
		
		
	});
	
	$("#add_more_box2").click(function(){
		$("#reward-box3").show();
		$("#add_more_box2").hide();
		$("#add_more_box3").show();
		
	});
	
	$("#add_more_box3").click(function(){
		$("#reward-box4").show();
		$("#add_more_box3").hide();
		$("#add_more_box4").show();
		
	});
	
	$("#add_more_box4").click(function(){
		$("#reward-box5").show();
		$("#add_more_box4").hide();
		$("#add_more_box5").show();
		
	});
	

});
</script>
</head>

<body>


<div id="start-panel">
	<div id="start-panel-inner">
		<div id="guideline">Guidelines
		</div>
		<div id="basics">Basics
		</div>
		<div id="rewards">Rewards
		</div>
		<div id="story">Story
		</div>
		<div id="about-you">About You
		</div>
		<div id="account">Accounts
		</div>
		<div id="review">Review
		</div>

		
	</div>
</div>
<div id="yellow-warning">
	<div id="yellow-warning-inner">
	<div style="float:left;margin-left:5px;">Want to get a head start? Amazon Payments verification can take up to 7 days, so &nbsp;</div><div id="account1" style="float:left;"><a href="#">visit your Account</a></div></div style="float:left">&nbsp; section to get the ball rolling.</div>
	</div>
</div>
<div id="big-header">
	<div id="big-header-inner">
		<div id="guideline-header"><h2>Kickstarter is a funding platform for creative projects.</h2><br/>
		These are our guidelines:
		
		</div>
		<div id="basic-header"><h2>Meet your new project.</h2><br/>
		Start by giving it a name, a pic, and other important details.
		</div>
		
		<div id="reward-header"><h2>Every project needs great rewards.</h2><br/>
		Be creative and price them fairly. Explore other projects for inspiration!
		</div>
		
		<div id="story-header"><h2>Itâs not just a project, itâs a story.</h2><br/>
		Tell it with a video. It doesnât have to be fancy, it just has to be you
		</div>
		
		<div id="about-you-header"><h2>Now a little bit about you.</h2><br/>
		Tell people who you are! Supporting links are always nice.
		</div>
		
		<div id="account-header"><h2>Some housekeeping.</h2><br/>
		Get your account verified and ready to receive pledges.
		</div>
		
		<div id="review-header"><h2>The homestretch!.</h2><br/>
		Once everything is in place, submit your project for review.
		</div>

		
		

		
	</div>
</div>
<form id="myform" method="post" action="/project">	
<div id="save_status">
	<div id="save_status_inner">
		<a href="/index.jsp">
			<div id="undo_button"><i class="icon-undo"></i> Discard change
			</div>
		</a>
		
		
		<div id="save_button" ><i class="icon-save"></i> <input id="save_submit" type="submit" value="Save Project" style="border:none;background-color:#08c;padding:10px;"/>
		</div>
		
		<a href="/">
			<div id="exit_button"><i class="icon-off"></i> Exit!
			</div>
		</a>
	</div>
</div>

<div id="create-area-panel">
	<div id="create-area-inner">
		<div id="guideline-content">
<br/><h2>Everything on Kickstarter must be a project.</h2><br/>

A project is something with a clear end, like making an album, a film, or a new game. A project will eventually be completed, and something will be produced as a result.<br/>

<br/><h2>Every project on Kickstarter must fit into one of our categories.</h2><br>

Our categories are Art, Comics, Dance, Design, Fashion, Film, Food, Games, Music, Photography, Publishing, Technology, and Theater.<br/>

<br/><h2>Are those the only guidelines?</h2><br/>

Those are the main two, but read on for specific uses of Kickstarter that are not allowed, and note that Hardware and Product Design projects have additional guidelines below. We don't curate projects based on taste. Instead, we do a quick check to make sure they meet these guidelines.<br/>

Who can create a project on Kickstarter?<br/>

Creating projects is currently open to US, UK, and Canadian creators over the age of 18 (see full details). Businesses, nonprofits, and other organizations can also use Kickstarter to fund their creative projects.<br/>

<br/><h2>What is not allowed?</h2><br/>
<ul>

<li>Kickstarter cannot be used to raise money for causes, whether it's the Red Cross or a scholarship, or for "fund my life" projects, like tuition or bills.</li>

<li>Kickstarter cannot be used to sell equity or solicit loans.</li>

<li>Projects cannot resell items or offer rewards not produced by the project or its creator.</li>

<li>Creators cannot promise to donate a portion of funds raised or future revenue to a cause.</li>

<li>Projects cannot offer rewards in bulk quantities (more than 10).</li>

<li>Kickstarter cannot be used to fund e-commerce, business, and social networking websites or apps.</li>

<li>Kickstarter cannot be used to fund software projects not run by the developers themselves.</li>

<li>Kickstarter cannot be used to buy real estate.</li>

<li>Projects cannot offer alcohol as a reward.</li>

<li>Projects cannot offer genetically modified organisms as a reward. (Updated 7/31/2013)</li>

<li>No self-help material (books, videos, etc). This includes projects that offer (or produce materials that offer) business, emotional, financial, health, medical, sex/seduction, or other self-help advice.</li>

<li>No offensive material (hate speech, etc.); pornographic material; or projects endorsing or opposing a political candidate.</li>

<li>No tobacco, drugs, and drug paraphernalia; energy food and drinks; or nutritional supplements.</li>

No contests, raffles, coupons, or lifetime memberships.

No bath, beauty, and cosmetic products; electronic surveillance equipment; eyewear (sunglasses, prescription glasses, and others); firearms, weapons, knives, weapon accessories, and replicas of weapons; medical, health, safety, and personal care products; or infomercial-type products.
</ul>

<div id="divider">
	<div id="green-line">
	</div>
</div>

<h2>Hardware and Product Design guidelines</h2><br/>

<b><h3>Show your work</h3></b><br/>

Projects must be clear about their state of development, and cannot be presented as preorders of finished products. Projects must show details (photos, videos, sketches) of their progress so far, along with a prototype demonstrating the product's current functionality. Projects must explain how the final design is likely to differ from the prototype, and include a production plan (i.e., how you're going to make it) and an estimated timeline.<br/>

No product simulations or photorealistic renderings<br/>

Technical drawings, CAD designs, sketches, and other parts of the design process are awesome and encouraged. Photorealistic renderings and simulations that could be mistaken for finished products or real events, however, are not allowed.<br/>

<br/><b><h3>Single servings</h3></b><br/>

Product Design and Hardware projects can only offer one reward per pledge. Offering multiple quantities can imply that rewards are shrink-wrapped and ready to ship when theyâre not. With some projects, we'll make exceptions for what we consider sensible sets â things like salt and pepper shakers, notebooks, building blocks, etc.<br/>

<br/><b><h3>About these guidelines</h3></b><br/>

Kickstarterâs mission is to help bring creative projects to life. Since launching in April 2009, weâve adjusted these guidelines several times â to add more of them to fit new uses, or to simplify them as we learn (and after seeing 100,000+ projects, weâve learned a ton). The guidelines are never perfect, but we care deeply about trying to get them right. We aim to be as open as possible while protecting the health and creative spirit of Kickstarter for the long term. Thanks for reading.	<br/>

	<div id="divider">
		<div id="green-line">
		</div>
	</div>	
		</div>

		<div id="basic-content">
			<div id="project-input-box" style="height:45px;">
				<div id="project-tag">Project image
				</div>
				<div id="project-input"><input type="text" name="project_image"  style="width:600px;"/>
				</div>
			</div>
			
			<div id="project-input-box" style="height:100px;">
				<div id="project-tag">Project title
				</div>
				<div id="project-input"><input type="text" name="project_title"  style="width:600px;"/><br/>
				Your project title should be simple, specific, and memorable, and it should include the title of the creative project you're raising funds for. Avoid words like "help,â "support,â or "fund.â
				</div>
			</div>
			
			<div id="project-input-box" style="height:45px;">
				<div id="project-tag">Project category
				</div>
				<div id="project-input">
					<select name="project_category">
						<option value="art">Art</option>
						<option value="comics">Comics</option>
						<option value="dance">Dance</option>
						<option value="design">Design</option>
						<option value="fashion">Fashion</option>
						<option value="file_video">Film&amp;Video</option>
						<option value="food">Food</option>
						<option value="games">Games</option>
						<option value="music">Music</option>
						<option value="photography">Photography</option>
						<option value="publishing">Publishing</option>
						<option value="technology">Technology</option>	
						<option value="theater">Theater</option>
					</select>
				</div>
			</div>
			
			<div id="project-input-box" style="height:120px;">
				<div id="project-tag">Short blurb
				</div>
				<div id="project-input"><textarea name="project_desc"  style="width:600px;height:70px;"/></textarea><br/>
				If you had to describe your project in one tweet, how would you do it?
				</div>
			</div>
			
			<div id="project-input-box" style="height:45px;">
				<div id="project-tag">Funding duration
				</div>
				<div id="project-input"><input type="text" name="funding_duration" value="1-60 days, we recommend 30 or less"  style="width:600px;"/>
				
				</div>
			</div>
			
			<div id="project-input-box" style="height:45px;">
				<div id="project-tag">Funding Goal
				</div>
				<div id="project-input"><input type="text" name="funding_goal" value="0$ USD"  style="width:600px;"/>
				
				</div>
			</div>
		
		</div>
		<div id="reward-content">
			<div id="reward-left">
				<div id="reward-box1">
					<div id="reward-box-title" > 
						Reward #1
					</div>
					<div id="reward-box-inner">
						<div id="reward-pledge">Pledge Amount 
						</div>
						<input type="text" name="reward1_pledge" style="float:left;height:40px;width:250px;"/>
						<div id="reward-desc">Description
						</div>
						<textarea name="reward1_desc" style="float:left;height:100px;width:250px;"></textarea>
						<div id="reward-estimate">Estimated delivery
						</div>
						<select name="reward1_esti_month" style="float:left;height:40px;width:150px;" >
							<option value="january">January</option>
							<option value="february">February</option>
							<option value="march">March</option>
							<option value="april">April</option>
							<option value="may">May</option>
							<option value="june">June</option>
							<option value="july">July</option>
							<option value="august">August</option>
							<option value="september">September</option>
							<option value="october">October</option>
							<option value="november">November</option>
							<option value="december">December</option>	
						</select>
						<select name="reward1_esti_year" style="float:left;height:40px;width:100px;" >
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
						</select>
						<div id="reward-shipping">Shipping detail
						</div>
						<select name="reward1_shipping" style="float:left;height:40px;width:250px;" >
							<option value="1">Shipping within Us only</option>
							<option value="2">Shipping anywhere in the world</option>
							<option value="3">No shipping involve</option>


						</select>
					</div>
				</div>
				
				<div id="reward-box2">
					<div id="reward-box-title" > 
						Reward #2
					</div>
					<div id="reward-box-inner">
						<div id="reward-pledge">Pledge Amount 
						</div>
						<input type="text" name="reward2_pledge" style="float:left;height:40px;width:250px;"/>
						<div id="reward-desc">Description
						</div>
						<textarea name="reward2_desc" style="float:left;height:100px;width:250px;"></textarea>
						<div id="reward-estimate">Estimated delivery
						</div>
						<select name="reward2_esti_month" style="float:left;height:40px;width:150px;" >
							<option value="january">January</option>
							<option value="february">February</option>
							<option value="march">March</option>
							<option value="april">April</option>
							<option value="may">May</option>
							<option value="june">June</option>
							<option value="july">July</option>
							<option value="august">August</option>
							<option value="september">September</option>
							<option value="october">October</option>
							<option value="november">November</option>
							<option value="december">December</option>	
						</select>
						<select name="reward2_esti_year" style="float:left;height:40px;width:100px;" >
							<option value="january">2013</option>
							<option value="february">2014</option>
							<option value="march">2015</option>
							<option value="april">2016</option>
							<option value="march">2017</option>
							<option value="april">2018</option>
						</select>
						<div id="reward-shipping">Shipping detail
						</div>
						<select name="reward2_shipping" style="float:left;height:40px;width:250px;" >
							<option value="ship_us">Shipping within Us only</option>
							<option value="ship_all">Shipping anywhere in the world</option>
							<option value="ship_no">No shipping involve</option>


						</select>
					</div>
				</div>
				
				<div id="reward-box3">
					<div id="reward-box-title" > 
						Reward #3
					</div>
					<div id="reward-box-inner">
						<div id="reward-pledge">Pledge Amount 
						</div>
						<input type="text" name="reward3_pledge" style="float:left;height:40px;width:250px;"/>
						<div id="reward-desc">Description
						</div>
						<textarea name="reward3_desc" style="float:left;height:100px;width:250px;"></textarea>
						<div id="reward-estimate">Estimated delivery
						</div>
						<select name="reward3_esti_month" style="float:left;height:40px;width:150px;" >
							<option value="january">January</option>
							<option value="february">February</option>
							<option value="march">March</option>
							<option value="april">April</option>
							<option value="may">May</option>
							<option value="june">June</option>
							<option value="july">July</option>
							<option value="august">August</option>
							<option value="september">September</option>
							<option value="october">October</option>
							<option value="november">November</option>
							<option value="december">December</option>	
						</select>
						<select name="reward3_esti_year" style="float:left;height:40px;width:100px;" >
							<option value="january">2013</option>
							<option value="february">2014</option>
							<option value="march">2015</option>
							<option value="april">2016</option>
							<option value="march">2017</option>
							<option value="april">2018</option>
						</select>
						<div id="reward-shipping">Shipping detail
						</div>
						<select name="reward3_shipping" style="float:left;height:40px;width:250px;" >
							<option value="ship_us">Shipping within Us only</option>
							<option value="ship_all">Shipping anywhere in the world</option>
							<option value="ship_no">No shipping involve</option>


						</select>
					</div>
				</div>
				
				<div id="reward-box4">
					<div id="reward-box-title" > 
						Reward #4
					</div>
					<div id="reward-box-inner">
						<div id="reward-pledge">Pledge Amount 
						</div>
						<input type="text" name="reward4_pledge" style="float:left;height:40px;width:250px;"/>
						<div id="reward-desc">Description
						</div>
						<textarea name="reward4_desc" style="float:left;height:100px;width:250px;"></textarea>
						<div id="reward-estimate">Estimated delivery
						</div>
						<select name="reward4_esti_month" style="float:left;height:40px;width:150px;" >
							<option value="january">January</option>
							<option value="february">February</option>
							<option value="march">March</option>
							<option value="april">April</option>
							<option value="may">May</option>
							<option value="june">June</option>
							<option value="july">July</option>
							<option value="august">August</option>
							<option value="september">September</option>
							<option value="october">October</option>
							<option value="november">November</option>
							<option value="december">December</option>	
						</select>
						<select name="reward4_esti_year" style="float:left;height:40px;width:100px;" >
							<option value="january">2013</option>
							<option value="february">2014</option>
							<option value="march">2015</option>
							<option value="april">2016</option>
							<option value="march">2017</option>
							<option value="april">2018</option>
						</select>
						<div id="reward-shipping">Shipping detail
						</div>
						<select name="reward4_shipping" style="float:left;height:40px;width:250px;" >
							<option value="ship_us">Shipping within Us only</option>
							<option value="ship_all">Shipping anywhere in the world</option>
							<option value="ship_no">No shipping involve</option>


						</select>
					</div>
				</div>
				
				<div id="reward-box5">
					<div id="reward-box-title" > 
						Reward #5
					</div>
					<div id="reward-box-inner">
						<div id="reward-pledge">Pledge Amount 
						</div>
						<input type="text" name="reward5_pledge" style="float:left;height:40px;width:250px;"/>
						<div id="reward-desc">Description
						</div>
						<textarea name="reward5_desc" style="float:left;height:100px;width:250px;"></textarea>
						<div id="reward-estimate">Estimated delivery
						</div>
						<select name="reward5_esti_month" style="float:left;height:40px;width:150px;" >
							<option value="january">January</option>
							<option value="february">February</option>
							<option value="march">March</option>
							<option value="april">April</option>
							<option value="may">May</option>
							<option value="june">June</option>
							<option value="july">July</option>
							<option value="august">August</option>
							<option value="september">September</option>
							<option value="october">October</option>
							<option value="november">November</option>
							<option value="december">December</option>	
						</select>
						<select name="reward5_esti_year" style="float:left;height:40px;width:100px;" >
							<option value="january">2013</option>
							<option value="february">2014</option>
							<option value="march">2015</option>
							<option value="april">2016</option>
							<option value="march">2017</option>
							<option value="april">2018</option>
						</select>
						<div id="reward-shipping">Shipping detail
						</div>
						<select name="reward5_shipping" style="float:left;height:40px;width:250px;" >
							<option value="ship_us">Shipping within Us only</option>
							<option value="ship_all">Shipping anywhere in the world</option>
							<option value="ship_no">No shipping involve</option>


						</select>
					</div>
				</div>
				
				<div id="add_more_box">Add more backer reward
				</div>
				<div id="add_more_box2">Add more backer reward
				</div>
				<div id="add_more_box3">Add more backer reward
				</div>
				<div id="add_more_box4">Add more backer reward
				</div>
				<div id="add_more_box5">Add more backer reward
				</div>
			</div>
			

			
			<div id="reward-right">
<b>What to offer</b><br/><br/>

Copies of what you're making, unique experiences, and limited editions work great.<br/><br/>

<b>How to price</b><br/><br/>

Price fairly, offer value
Most popular reward: $25
Something fun for $10 or less is always a good idea
Budget any domestic shipping costs into the reward price<br/><br/>

<b style="font:red;">What's prohibited</b><br/><br/>
<ul>
<li>Rewards not directly produced by the creator or the project itself</li>
<li>Financial incentives</li>
<li>Raffles, lotteries, and sweepstakes</li>
<li>Coupons, discounts, and cash-value gift cards</li>
<li>Rewards in bulk quantities (more than ten of an item)</li>
<li>For more, please review our list of prohibited items and subject matter</li>
</ul>

			</div>
		</div>
		<div id="story-content">
			<div id="story-left">
				<div id="project-input-box" style="height:110px;">
					<div id="project-tag">Project video
					</div>
					<div id="project-input"><input type="text" name="project_video" style="width:600px;"/><br/>
					The most important thing about project videos? Making one. Projects with a video have a much higher chance of success. It doesn't need to be an Oscar contender, just be yourself and explain what you want to do. For helpful tips and a dose of inspiration
					</div>
				</div>
				<div id="project-input-box" style="height:300px;">
					<div id="project-tag">Project Description
					</div>
					<div id="project-input">
					Use your project description to share more about what youâre raising funds to do and how you plan to pull it off. Itâs up to you to make the case for your project.
						<textarea name="project_description"  style="height:250px;width:600px;"></textarea><br/>
					
					</div>
				</div>
				<div id="project-input-box" style="height:450px;">
				<div id="project-tag">Risks and challenge
					</div>
					<div id="project-input">
					<b>What are the risks and challenges that come with completing your project, and how are you qualified to overcome them?</b><br/><br/>

	When it comes to fulfillment, every project has potential obstacles, from production delays to permits to collaborator mishaps. What unique challenges might you face after your project is successfully funded? And if setbacks do arise (we hope they donât, but it happens!), how will you tackle them?<br>

	Addressing this from the start helps build a supportive community. Backers will understand your project is a work in progress and feel confident that youâll work hard to follow through, even when faced with challenges.<br/>
						<textarea name="project_risks"  style="height:250px;width:600px;"></textarea><br/>
					
					</div>
				</div>
			</div>
		</div>
			
		
		<div id="about-you-content">
			<div id="project-input-box" style="height:60px;">
				<div id="project-tag">Profile photo
				</div>
				<div id="project-input"><div style="float:left;margin-right:15px;"><img src="<%= session.getAttribute("currentUser.avatar") %>" width="40px;" height="40px;"></img></div><input type="text" name="profile_photo"  style="width:550px;"/>
				</div>
			</div>
			<div id="project-input-box" style="height:60px;">
				<div id="project-tag">Your name
				</div>
				<div id="project-input"><input type="text" value="<%= session.getAttribute("currentUser") %>" name="fullname"  style="width:600px;"/><br/>
				Once you launch a project, your name on Kickstarter cannot be changed.
				</div>
				<input style="display:none;" type="text" name="key" value="<%= session.getAttribute("currentUser.userkey") %>">
			</div>
			<div id="project-input-box" style="height:120px;">
				<div id="project-tag">Biography
				</div>
				<div id="project-input"><textarea name="biography" style="width:600px;height:100px;"/></textarea><br/>
				</div>	
			</div>	
			<div id="project-input-box" style="height:100px;">
				<div id="project-tag">Your Website
				</div>
				<div id="project-input"><input type="text"  name="website"  style="width:600px;"/><br/>
				Include links that will help backers get a sense of who you are and your qualifications to execute your project. Your blog or personal website, your Twitter account, and examples of your work are perfect!
				</div>
			</div>			
			
		</div>
		<div id="account-content">
			<div id="project-input-box" style="height:250px;">
				<div id="project-tag">Amazon Payment
				</div>
				<div id="project-input">
<h4><b>Connect to Amazon Payments</b></h4><br/>

An Amazon Payments business account is required for processing credit card transactions and receiving funds. If you already have a business account, you can sign in as a returning customer.

Note: An Amazon Payments account is different from the Amazon.com account you use for shopping!

After setup, you must verify your account, which can take up to 7 days.
					<div id="amazon-button">Connect to Amazon payment
					</div>
				</div>
			</div>	
		</div>
		<div id="review-content">
	
<h2>Before you submit</h2><br/>
<h4>Make sure you have:</h4><br/>

Clearly explained what you're raising funds to do.<br/>
Added a video! It's the best way to connect with your backers.<br/>
Created a series of well-priced, fun rewards. Not just thank-yous!<br/>
Previewed your project and gotten feedback from a friend.<br/>
Checked out other projects on Kickstarter and backed one to get a feel for the experience.<br/><br/>

<h2>After you submit</h2><br/>
Once you've done everything listed above and submitted your project for review:<br/><br/>

Your project will be reviewed to ensure it meets the Project Guidelines.<br/>
Within a few days, we'll send you a message about the status of your project.<br/>
If approved, you can launch whenever you're ready.<br/>
		</div>
</form>		

	</div>
</div>
	
	
</body>

</html>
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
	
	<div id="whatis-container">
	<div id="whatis-inner">
	<br/><br/><br/>
<h2>Seven things to know about Kickstarter:</h2><br/>

<h4>1. Kickstarter is a new way to fund creative projects.</h4><br/>

We’re a home for everything from films, games, and music to art, design, and technology. Kickstarter is full of projects, big and small, that are brought to life through the direct support of people like you. Since our launch in 2009, more than 4.7 million people have pledged over $768 million, funding more than 47,000 creative projects. Thousands of creative projects are raising funds on Kickstarter right now.<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>
<h4>2. Each project is independently created.<br/></h4>

The filmmakers, musicians, artists, and designers you see on Kickstarter have complete control over and responsibility for their projects. Kickstarter is a platform and a resource; we’re not involved in the development of the projects themselves. Anyone can launch a project on Kickstarter as long as it meets our guidelines.<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>
<h4>3. Together, creators and backers make projects happen.<br/></h4>

Project creators set a funding goal and deadline. If people like a project, they can pledge money to make it happen. Funding on Kickstarter is all-or-nothing — projects must reach their funding goals to receive any money. All-or-nothing funding might seem scary, but it’s amazingly effective in creating momentum and rallying people around an idea. To date, an impressive 44% of projects have reached their funding goals.<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>
<h4>4. Creators keep 100% ownership of their work.</h4><br/>

Backers are supporting projects to help them come to life, not to profit financially. Instead, project creators offer rewards to thank backers for their support. Backers of an effort to make a book or film, for example, often get a copy of the finished work. A bigger pledge to a film project might get you into the premiere — or a private screening for you and your friends. One artist raised funds to create a wall installation, then gave pieces of it to her backers when the exhibit ended.<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>
<h4>5. Creative works were funded this way for centuries.</h4><br/>

Mozart, Beethoven, Whitman, Twain, and other artists funded works in similar ways — not just with help from large patrons, but by soliciting money from smaller patrons, often called subscribers. In return for their support, these subscribers might have received an early copy or special edition of the work. Kickstarter is an extension of this model, turbocharged by the web.	<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>	
<h4>6. Backing a project is more than just giving someone money.</h4><br/>

It’s supporting their dream to create something that they want to see exist in the world. People rally around their friends’ projects, fans support people they admire, and others simply come to Kickstarter to be inspired by new ideas. Some projects take longer than anticipated, but creators who are transparent about issues and delays usually find their backers to be understanding.<br/><br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>

<h4>7. Our mission is to help bring creative projects to life.</h4><br/>

We’re a for-profit company based in New York City’s Lower East Side. We spend our time making Kickstarter a little bit better every day, answering questions from backers and creators, and finding new projects to share. If a project is successfully funded, we apply a 5% fee to the funds collected.<br/><br/>

We believe that creative projects make for a better world, and we’re thrilled to help support new ones. Building a community of backers around an idea is an amazing way to make something new.	<br/>
	<div id="divider">
		<div id="green-line">
		</div>
	</div>	
	</div>
</div>
	
	
</body>

</html>
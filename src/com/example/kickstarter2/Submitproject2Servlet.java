package com.example.kickstarter2;


import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Entity;

import java.io.IOException;
import java.util.Date;


public class Submitproject2Servlet extends HttpServlet {
    
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {
		
        String project_image = req.getParameter("project_image");
        String project_title = req.getParameter("project_title");       
        String project_category = req.getParameter("project_category");
        String project_desc = req.getParameter("project_desc");
        int project_duration = Integer.parseInt(req.getParameter("project_duration"));
        int project_goal = Integer.parseInt(req.getParameter("project_funding"));
        String project_description = req.getParameter("project_description");
        String project_risks = req.getParameter("project_risks");
        String user_photo = req.getParameter("profile_photo");
        String user_biography = req.getParameter("biography");
        String user_website = req.getParameter("website");
        //-----------------------reward//
        int reward1_pledge = Integer.parseInt(req.getParameter("reward1_pledge"));
        String reward1_desc = req.getParameter("reward1_desc");
        String reward1_esti_month = req.getParameter("reward1_esti_month");
        int reward1_esti_year = Integer.parseInt(req.getParameter("reward1_year"));
        String reward1_shipping = req.getParameter("reward1_shipping");

        Key projectKey = KeyFactory.createKey("Project", project_title);
        //-----------------------user
        
        
        String project_owner = req.getParameter("fullname");
        String userkey = req.getParameter("key");
        
        
        DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
        
        Key userKey = KeyFactory.createKey("User", project_owner);
        try {
			Entity user = ds.get(userKey);
			
			user.setProperty("avatar",user_photo);
			user.setProperty("biography",user_biography);
			user.setProperty("website",user_website);
			user.setProperty("project_hold",project_title);
			ds.put(user);
			
		} catch (EntityNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
        
        
        Entity project = new Entity("Project", projectKey);
        project.setProperty("project_owner",project_owner);
        project.setProperty("project_image",project_image);
        project.setProperty("project_title",project_title);
        project.setProperty("project_category",project_category);
        project.setProperty("project_desc",project_desc);
        project.setProperty("project_description",project_description);
        project.setProperty("project_duration",project_duration);
        project.setProperty("project_goal",project_goal);
        project.setProperty("project_risks",project_risks);
        // reward
        project.setProperty("reward1_pledge",reward1_pledge);
        project.setProperty("reward1_desc",reward1_desc);
        project.setProperty("reward1_esti_month",reward1_esti_month);
        project.setProperty("reward1_esti_year",reward1_esti_year);
        project.setProperty("reward1_shipping",reward1_shipping);
        // another-information
        project.setProperty("project_earned",0);
        project.setProperty("project_backer",0);
        project.setProperty("project_link","start.jsp?id"+projectKey);
        

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(project);
        resp.sendRedirect("start.jsp?id="+projectKey);


    }
}




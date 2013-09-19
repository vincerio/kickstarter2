package com.example.kickstarter2;



import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;

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

public class Register2Servlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {

        resp.setContentType("text/html");


        String fullname = req.getParameter("fullname");      
        String email = req.getParameter("email");
        String re_email = req.getParameter("re_email");
        String password = req.getParameter("password");
        String re_password = req.getParameter("re_password");
        
        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        Key userKey = KeyFactory.createKey("User", fullname);
        String userKeyStr = KeyFactory.keyToString(userKey);
        Entity user = new Entity("User",userKey);
        user.setProperty("fullname", fullname);
        user.setProperty("email", email);
        user.setProperty("password", password);      
        user.setProperty("biography", "");
        user.setProperty("project_hold","");
        user.setProperty("userkey", userKey);
        user.setProperty("verify",0);
        user.setProperty("website","");

        datastore.put(user);
        
        

        Filter emailFilter =
        new FilterPredicate("email",
                            FilterOperator.EQUAL,
                            email);

        Filter passwordFilter =
        new FilterPredicate("password",
                            FilterOperator.EQUAL,
                            password);
        Filter loginFilter =
        		  CompositeFilterOperator.and(emailFilter, passwordFilter);
        Query q = new Query("User").setFilter(loginFilter);
        
        
		PreparedQuery pq = datastore.prepare(q);
		for (Entity result : pq.asIterable()) {
				  String fullname1 = (String) result.getProperty("fullname");
				  String email1 = (String) result.getProperty("email");
				  String avatar1 = (String) result.getProperty("avatar");
				  String project_hold1 = (String) result.getProperty("project_hold");
				  String biography1 = (String) result.getProperty("biography");
				  String website1 = (String) result.getProperty("website");
				  Key userKeyStr1 =  (Key) result.getProperty("userkey");
				  
				  								  
				  HttpSession session = req.getSession();
				  session.setAttribute("currentUser", fullname1);
				  session.setAttribute("currentUser.email", email1);
				  session.setAttribute("currentUser.avatar", avatar1);
				  session.setAttribute("currentUser.project_hold", project_hold1);
				  session.setAttribute("currentUser.biography", biography1);
				  session.setAttribute("currentUser.website", website1);
				  session.setAttribute("currentUser.userkey", userKeyStr1);
				    
			}
		resp.sendRedirect("/index.jsp");



    }
}




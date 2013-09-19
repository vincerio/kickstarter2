package com.example.kickstarter2;



import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




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



public class Login2Servlet extends HttpServlet {
    
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {


        String username = req.getParameter("login_email");        
        String password = req.getParameter("login_password");
        
        resp.setContentType("text/html");
        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        Filter emailFilter =
        new FilterPredicate("email",
                            FilterOperator.EQUAL,
                            username);

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




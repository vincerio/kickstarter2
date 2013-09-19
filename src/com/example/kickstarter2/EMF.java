package com.example.kickstarter2;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMF {
	private static final EntityManagerFactory instance = Persistence.createEntityManagerFactory("transactions-optional");
	private EMF(){}
	
	public static EntityManagerFactory get(){
		return instance;
	}
}
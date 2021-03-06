package com.intuiture.imlc.repos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseRepository {

	@Autowired
	private SessionFactory sessionFactory;

	protected synchronized Session getSession() {
		return sessionFactory.getCurrentSession();
	}

}

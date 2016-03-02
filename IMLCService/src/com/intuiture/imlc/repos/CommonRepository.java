package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository
public class CommonRepository extends BaseRepository {
	private final static Logger LOG = Logger.getLogger(CommonRepository.class);

	/*
	 * This method is to save an object
	 */
	public synchronized void persist(Object object) {
		getSession().persist(object);
	}

	/*
	 * This method is to update an object
	 */
	public synchronized void update(Object object) {
		getSession().merge(object);
	}

	public List<?> getAll(Class<?> clazz) {
		List<?> list = null;
		try {
			Criteria criteria = getSession().createCriteria(clazz);
			list = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at getAll():" + e.getMessage(), e);
		}
		return list;
	}

	public Object getObjectById(Integer id, Class<?> clazz) {
		return getSession().get(clazz, id);
	}
}

package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Customer;

@Repository
public class CustomerRepository extends BaseRepository {
	private final static Logger LOG = Logger
			.getLogger(CustomerRepository.class);

	private static final String FINDALL = "select c from Customer c";

	/**
	 * This method is to get the all Customers
	 * 
	 * @param productId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomersInfo() {
		List<Customer> customerList = null;
		try {
			Query tpQuery = getSession().createQuery(FINDALL);
			// tpQuery.setMaxResults(10);
			customerList = tpQuery.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at CustomerRepository, getAllCustomersInfo()-->"
					+ e.getMessage(), e);
		}
		return customerList;

	}

	/**
	 * This method is to get the instance based on id
	 * 
	 * @param customerId
	 * @return
	 */
	public Customer findById(Long customerId) {
		return (Customer) getSession().createCriteria(Customer.class)
				.add(Restrictions.eq("customerId", customerId)).uniqueResult();
	}
}

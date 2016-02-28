package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.intuiture.imlc.entities.Counterparty;

@Repository
public class CounterPartyRepository extends BaseRepository {
	private final static Logger LOG = Logger
			.getLogger(CounterPartyRepository.class);

	private static final String FINDALL = "select c from Counterparty c";

	/**
	 * This method is to get the CounterParties
	 * 
	 * @param productId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Counterparty> getAllCounterParty() {
		List<Counterparty> counterpartiesList = null;
		try {
			Query query = getSession().createQuery(FINDALL);
			// tpQuery.setMaxResults(10);
			counterpartiesList = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error(
					"Error at CounterPartyRepository, getAllCounterParty()-->"
							+ e.getMessage(), e);
		}
		return counterpartiesList;

	}

	/**
	 * This method is to get the instance based on id
	 * 
	 * @param customerId
	 * @return
	 */
	public Counterparty findById(String counterPartyId) {
		return (Counterparty) getSession().createCriteria(Counterparty.class).add(Restrictions.eq("counterpartyId", counterPartyId)).uniqueResult();
	}
}

package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.intuiture.imlc.entities.Swift;

@Repository
public class SwiftRepository extends BaseRepository {
	private final static Logger LOG = Logger.getLogger(SwiftRepository.class);

	private static final String FINDALLBYTRANSTYPE = "select s from Swift s where s.transaction_Type = ?";

	/**
	 * This method is to get the all swift by transaction type
	 * 
	 * @param productId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Swift> getAllSwiftByTransactionType(String transaction_Type) {
		List<Swift> swiftList = null;
		try {
			Query tpQuery = getSession().createQuery(FINDALLBYTRANSTYPE);
			tpQuery.setParameter(0, transaction_Type);
			swiftList = tpQuery.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at SwiftRepository, getAllSwiftByTransactionType()-->" + e.getMessage(), e);
		}
		return swiftList;

	}

}

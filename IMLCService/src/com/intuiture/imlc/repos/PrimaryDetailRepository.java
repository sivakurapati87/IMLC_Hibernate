package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.intuiture.imlc.entities.ImportLCIssue;

@Repository
public class PrimaryDetailRepository extends BaseRepository {
	private final static Logger LOG = Logger.getLogger(PrimaryDetailRepository.class);

	public ImportLCIssue findById(Integer importLCIssueId) {
		return (ImportLCIssue) getSession().createCriteria(ImportLCIssue.class).add(Restrictions.eq("importLCIssueId", importLCIssueId)).uniqueResult();
	}

	/**
	 * This method is to get the ImportLC by transaction Number
	 * 
	 * @param transactionNumber
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public ImportLCIssue findByTransactionNumber(String transactionNumber) {
		ImportLCIssue importLCIssue = null;
		try {
			Criteria criteria = getSession().createCriteria(ImportLCIssue.class);
			criteria.add(Restrictions.eq("transaction_Ref_number", transactionNumber));
			criteria.add(Restrictions.or(Restrictions.eq("isDeleted", Boolean.FALSE), Restrictions.isNull("isDeleted")));
			List<ImportLCIssue> list = criteria.list();
			if (list != null && list.size() > 0) {
				importLCIssue = list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at findByTransactionNumber : " + e.getMessage(), e);
		}
		return importLCIssue;
	}

	/**
	 * This method is to get all the importlc issue
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ImportLCIssue> getAllPrimaryDetails() {
		List<ImportLCIssue> importLCIssueList = null;
		try {
			Criteria criteria = getSession().createCriteria(ImportLCIssue.class);
			criteria.add(Restrictions.or(Restrictions.eq("isDeleted", Boolean.FALSE), Restrictions.isNull("isDeleted")));
			criteria.setMaxResults(10);
			importLCIssueList = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at getAllPrimaryDetails : " + e.getMessage(), e);
		}
		return importLCIssueList;
	}

	/**
	 * This method is to return max 10 recent records of importlc based on
	 * customerId or counterpartyId
	 * 
	 * @param customerId
	 * @param counterpartyId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ImportLCIssue> getAllPrimaryDetailsByCustomerOrBenificiaryId(Long customerId, String counterpartyId, Integer statusId) {
		List<ImportLCIssue> importLCIssueList = null;
		try {
			Criteria criteria = getSession().createCriteria(ImportLCIssue.class);
			if (customerId != null && customerId != 0)
				criteria.add(Restrictions.eq("customerId", customerId));
			if (counterpartyId != null && !counterpartyId.equalsIgnoreCase("null"))
				criteria.add(Restrictions.eq("counterpartyId", counterpartyId));
			if (statusId != null && statusId != 0)
				criteria.add(Restrictions.eq("statusId", statusId));
			criteria.add(Restrictions.or(Restrictions.eq("isDeleted", Boolean.FALSE), Restrictions.isNull("isDeleted")));
			criteria.setMaxResults(10);
			importLCIssueList = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at getAllPrimaryDetailsByCustomerOrBenificiaryId : " + e.getMessage(), e);
		}
		return importLCIssueList;
	}

	/**
	 * This method is to return max 10 recent records of ImportLCStatus based on
	 * statusId
	 * 
	 * @param customerId
	 * @param counterpartyId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ImportLCIssue> getAllPrimaryDetailsByStatusId(Integer statusId) {
		List<ImportLCIssue> importLCIssuesList = null;
		try {
			Criteria criteria = getSession().createCriteria(ImportLCIssue.class);
			criteria.add(Restrictions.eq("statusId", statusId));
			criteria.add(Restrictions.or(Restrictions.eq("isDeleted", Boolean.FALSE), Restrictions.isNull("isDeleted")));
			// criteria.setMaxResults(10);
			importLCIssuesList = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at getAllPrimaryDetailsByStatusId : " + e.getMessage(), e);
		}
		return importLCIssuesList;
	}

}

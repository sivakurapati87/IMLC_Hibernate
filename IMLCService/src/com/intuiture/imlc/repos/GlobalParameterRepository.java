package com.intuiture.imlc.repos;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.intuiture.imlc.entities.Global_Parameters;

@Repository
public class GlobalParameterRepository extends BaseRepository {
	private final static Logger LOG = Logger.getLogger(GlobalParameterRepository.class);
	private static final String FINDBYPRODUCTIDANDTEMPLATE = "select gp from Global_Parameters gp where gp.productId = ? and gp.type_Of_LC = ?";
	private static final String FINDBYPRODUCTID = "select gp from Global_Parameters gp where gp.productId = ?";
	private static final String FINDALL = "select gp from Global_Parameters gp group by gp.productId";

	/**
	 * This method is to get the global parameters by productId
	 * 
	 * @param productId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Global_Parameters> findGlobalParameterByProductId_TemplateType(String productId, String template) {
		List<Global_Parameters> global_Parameters = null;
		try {
			Query tpQuery = getSession().createQuery(FINDBYPRODUCTIDANDTEMPLATE);
			tpQuery.setParameter(0, productId);
			tpQuery.setParameter(1, template);
			global_Parameters = tpQuery.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at GlobalParameterRepository, findGlobalParameterByProductId_TemplateType()-->" + e.getMessage(), e);
		}
		return global_Parameters;

	}

	/**
	 * This method is to get the all globalparameters
	 * 
	 * @return
	 */
	public List<?> findAllProductIds() {
		List<?> global_Parameters = null;
		try {
			Query tpQuery = getSession().createQuery(FINDALL);
			// tpQuery.setMaxResults(10);
			global_Parameters = tpQuery.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at GlobalParameterRepository, findAllProductIds()-->" + e.getMessage(), e);
		}
		return global_Parameters;

	}

	/**
	 * This method is to get the global parameters by productId
	 * 
	 * @param productId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Global_Parameters> findGlobalParameterByProductId(String productId) {
		List<Global_Parameters> global_Parameters = null;
		try {
			Query tpQuery = getSession().createQuery(FINDBYPRODUCTID);
			tpQuery.setParameter(0, productId);
			global_Parameters = tpQuery.list();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at GlobalParameterRepository, findGlobalParameterByProductId()-->" + e.getMessage(), e);
		}
		return global_Parameters;

	}

	/**
	 * This method is to get the number of records
	 * 
	 * @param productId
	 * @param template
	 * @return
	 */
	public Long checkTheExistenceOfRecords() {
		Long noOfRecords = null;
		try {
			Query query = getSession().createQuery("select count(*) from Global_Parameters gp");
			noOfRecords = (Long) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			LOG.error("Error at ImportLCGlobalParameterDeclarationRepository, checkTheExistenceOfRecords()-->" + e.getMessage(), e);
		}
		return noOfRecords;

	}

	/**
	 * This method is to get the instance based on id
	 * 
	 * @param globalParameterId
	 * @return
	 */
	public Global_Parameters findById(Integer globalParameterId) {
		return (Global_Parameters) getSession().createCriteria(Global_Parameters.class).add(Restrictions.eq("global_ParameterId", globalParameterId)).uniqueResult();
	}
}

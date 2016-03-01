package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Commodity;
import com.intuiture.imlc.json.CommodityJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class CommodityService {
	@Autowired
	private CommonRepository commonRepository;
	@Autowired
	private PrimaryDetailRepository primaryDetailRepository;

	// public Boolean saveOrUpdatePFInfo(ImportLCIssueJson importLCIssueJson) {
	// ImportLCIssue importLCIssue = null;
	// try {
	// if (importLCIssueJson.getImportLCIssueId() != null) {
	// ImportLCIssue existedImportLCIssue =
	// primaryDetailRepository.findById(importLCIssueJson.getImportLCIssueId());
	// existedImportLCIssue.setIsDeleted(Boolean.TRUE);
	// commonRepository.update(existedImportLCIssue);
	// }
	// importLCIssue = new ImportLCIssue();
	// TransformJsonToDomain.getImportLCIssueFromJson(importLCIssue,
	// importLCIssueJson);
	// commonRepository.persist(importLCIssue);
	// } catch (Exception e) {
	// e.printStackTrace();
	// return false;
	// }
	// return true;
	// }

	/**
	 * This method is to get all the primary details
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<CommodityJson> getAllCommodities() {
		List<CommodityJson> commodityJsonList = null;
		try {
			List<Commodity> commoditiesList = (List<Commodity>) commonRepository.getAll(Commodity.class);
			if (commoditiesList != null && commoditiesList.size() > 0) {
				commodityJsonList = new ArrayList<CommodityJson>();
				for (Commodity commodity : commoditiesList) {
					commodityJsonList.add(TransformDomainToJson.getCommodityJson(commodity));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return commodityJsonList;
	}

}

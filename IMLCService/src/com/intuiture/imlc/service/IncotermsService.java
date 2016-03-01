package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Incoterms;
import com.intuiture.imlc.json.IncotermsJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class IncotermsService {
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
	public List<IncotermsJson> getAllIncoterms() {
		List<IncotermsJson> incotermsJsonList = null;
		try {
			List<Incoterms> incotermList = (List<Incoterms>) commonRepository.getAll(Incoterms.class);
			if (incotermList != null && incotermList.size() > 0) {
				incotermsJsonList = new ArrayList<IncotermsJson>();
				for (Incoterms incoterms : incotermList) {
					incotermsJsonList.add(TransformDomainToJson.getIncotermsJson(incoterms));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return incotermsJsonList;
	}

}

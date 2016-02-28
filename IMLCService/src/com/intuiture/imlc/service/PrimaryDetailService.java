package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.ImportLCIssue;
import com.intuiture.imlc.json.ImportLCIssueJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.util.TransformDomainToJson;
import com.intuiture.imlc.util.TransformJsonToDomain;

@Service
@Transactional
public class PrimaryDetailService {
	@Autowired
	private CommonRepository commonRepository;
	@Autowired
	private PrimaryDetailRepository primaryDetailRepository;

	public Boolean saveOrUpdatePFInfo(ImportLCIssueJson importLCIssueJson) {
		ImportLCIssue importLCIssue = null;
		try {
			if (importLCIssueJson.getImportLCIssueId() != null) {
				ImportLCIssue existedImportLCIssue = primaryDetailRepository.findById(importLCIssueJson.getImportLCIssueId());
				existedImportLCIssue.setIsDeleted(Boolean.TRUE);
				commonRepository.update(existedImportLCIssue);
			}
			importLCIssue = new ImportLCIssue();
			TransformJsonToDomain.getImportLCIssueFromJson(importLCIssue, importLCIssueJson);
			commonRepository.persist(importLCIssue);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public ImportLCIssueJson getPrimaryDetailsByTransactionId(String transactionNumber) {
		ImportLCIssueJson importLCIssueJson = null;
		try {
			ImportLCIssue importLCIssue = primaryDetailRepository.findByTransactionNumber(transactionNumber);
			if (importLCIssue != null) {
				importLCIssueJson = TransformDomainToJson.getImportLCIssueJson(importLCIssue);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return importLCIssueJson;
	}

	/**
	 * This method is to get all the primary details
	 * 
	 * @return
	 */
	public List<ImportLCIssueJson> getAllPrimaryDetails() {
		List<ImportLCIssueJson> importLCIssueJsonList = null;
		try {
			List<ImportLCIssue> importLCIssueList = primaryDetailRepository.getAllPrimaryDetails();
			if (importLCIssueList != null && importLCIssueList.size() > 0) {
				importLCIssueJsonList = new ArrayList<ImportLCIssueJson>();
				for (ImportLCIssue importLCIssue : importLCIssueList) {
					importLCIssueJsonList.add(TransformDomainToJson.getImportLCIssueJson(importLCIssue));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return importLCIssueJsonList;
	}

	/**
	 * This method is to get all the primary details
	 * 
	 * @return
	 */
	public List<ImportLCIssueJson> getAllPrimaryDetailsByCustomerOrBenificiaryId(Long customerId, String counterpartyId, Integer statusId) {
		List<ImportLCIssueJson> importLCIssueJsonList = null;
		try {
			List<ImportLCIssue> importLCIssueList = primaryDetailRepository.getAllPrimaryDetailsByCustomerOrBenificiaryId(customerId, counterpartyId, statusId);
			if (importLCIssueList != null && importLCIssueList.size() > 0) {
				importLCIssueJsonList = new ArrayList<ImportLCIssueJson>();
				for (ImportLCIssue importLCIssue : importLCIssueList) {
					importLCIssueJsonList.add(TransformDomainToJson.getImportLCIssueJson(importLCIssue));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return importLCIssueJsonList;
	}

	/**
	 * This method is to get all the primary details by statusId
	 * 
	 * @return
	 */
	public List<ImportLCIssueJson> getAllPrimaryDetailsByStatusId(Integer statusId) {
		List<ImportLCIssueJson> importLCIssueJsonList = null;
		try {
			List<ImportLCIssue> importLCIssuesList = primaryDetailRepository.getAllPrimaryDetailsByStatusId(statusId);
			if (importLCIssuesList != null && importLCIssuesList.size() > 0) {
				importLCIssueJsonList = new ArrayList<ImportLCIssueJson>();
				for (ImportLCIssue importLCIssue : importLCIssuesList) {
					importLCIssueJsonList.add(TransformDomainToJson.getImportLCIssueJson(importLCIssue));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return importLCIssueJsonList;
	}
}

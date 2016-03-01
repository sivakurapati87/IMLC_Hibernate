package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Document;
import com.intuiture.imlc.json.DocumentJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class DocumentService {
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
	public List<DocumentJson> getAllDocuments() {
		List<DocumentJson> documentJsonList = null;
		try {
			List<Document> documentList = (List<Document>) commonRepository.getAll(Document.class);
			if (documentList != null && documentList.size() > 0) {
				documentJsonList = new ArrayList<DocumentJson>();
				for (Document document : documentList) {
					documentJsonList.add(TransformDomainToJson.getDocumentJson(document));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return documentJsonList;
	}

}

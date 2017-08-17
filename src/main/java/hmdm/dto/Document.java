package hmdm.dto;

import java.util.List;

public class Document extends BaseDTO{
	private static final long serialVersionUID = 1L;
	
	private Integer documentId;
	private String documentName;
	private Integer documentType;
	private String documentUrl;
	private Integer documentParent;
	private List<Document> childList;
	
	
	public Document() {
	}


	public Document(Integer documentId, String documentName, Integer documentType, String documentUrl,
			Integer documentParent, List<Document> childList) {
		super();
		this.documentId = documentId;
		this.documentName = documentName;
		this.documentType = documentType;
		this.documentUrl = documentUrl;
		this.documentParent = documentParent;
		this.childList = childList;
	}


	public Integer getDocumentId() {
		return documentId;
	}


	public void setDocumentId(Integer documentId) {
		this.documentId = documentId;
	}


	public String getDocumentName() {
		return documentName;
	}


	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}


	public Integer getDocumentType() {
		return documentType;
	}


	public void setDocumentType(Integer documentType) {
		this.documentType = documentType;
	}


	public String getDocumentUrl() {
		return documentUrl;
	}


	public void setDocumentUrl(String documentUrl) {
		this.documentUrl = documentUrl;
	}


	public Integer getDocumentParent() {
		return documentParent;
	}


	public void setDocumentParent(Integer documentParent) {
		this.documentParent = documentParent;
	}


	public List<Document> getChildList() {
		return childList;
	}


	public void setChildList(List<Document> childList) {
		this.childList = childList;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((childList == null) ? 0 : childList.hashCode());
		result = prime * result + ((documentId == null) ? 0 : documentId.hashCode());
		result = prime * result + ((documentName == null) ? 0 : documentName.hashCode());
		result = prime * result + ((documentParent == null) ? 0 : documentParent.hashCode());
		result = prime * result + ((documentType == null) ? 0 : documentType.hashCode());
		result = prime * result + ((documentUrl == null) ? 0 : documentUrl.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Document other = (Document) obj;
		if (childList == null) {
			if (other.childList != null)
				return false;
		} else if (!childList.equals(other.childList))
			return false;
		if (documentId == null) {
			if (other.documentId != null)
				return false;
		} else if (!documentId.equals(other.documentId))
			return false;
		if (documentName == null) {
			if (other.documentName != null)
				return false;
		} else if (!documentName.equals(other.documentName))
			return false;
		if (documentParent == null) {
			if (other.documentParent != null)
				return false;
		} else if (!documentParent.equals(other.documentParent))
			return false;
		if (documentType == null) {
			if (other.documentType != null)
				return false;
		} else if (!documentType.equals(other.documentType))
			return false;
		if (documentUrl == null) {
			if (other.documentUrl != null)
				return false;
		} else if (!documentUrl.equals(other.documentUrl))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Document [documentId=" + documentId + ", documentName=" + documentName + ", documentType="
				+ documentType + ", documentUrl=" + documentUrl + ", documentParent=" + documentParent + ", childList="
				+ childList + "]";
	}

}

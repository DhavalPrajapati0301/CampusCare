package com.bean;

import java.sql.Timestamp;

public class ComplaintBean {
	private Integer complaintId;
	private String title;
	private String category;
	private String priority;
	private String status;
	private String assignto;
	private String resolutionNotes;
//	private Timestamp createdAt;  // new field

	// getters and setters
	public Integer getComplaintId() { return complaintId; }
	public void setComplaintId(Integer complaintId) { this.complaintId = complaintId; }

	public String getTitle() { return title; }
	public void setTitle(String title) { this.title = title; }

	public String getCategory() { return category; }
	public void setCategory(String category) { this.category = category; }

	public String getPriority() { return priority; }
	public void setPriority(String priority) { this.priority = priority; }

	public String getStatus() { return status; }
	public void setStatus(String status) { this.status = status; }

	public String getAssignto() { return assignto; }
	public void setAssignto(String assignto) { this.assignto = assignto; }

	public String getResolutionNotes() { return resolutionNotes; }
	public void setResolutionNotes(String resolutionNotes) { this.resolutionNotes = resolutionNotes; }

//	public Timestamp getCreatedAt() { return createdAt; }
//	public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}

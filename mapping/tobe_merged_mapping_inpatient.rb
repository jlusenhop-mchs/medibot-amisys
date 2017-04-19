if essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "ACO"
  ex_code = "PZ"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Case Rate"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Clinical Trial"
  ex_code = "A6"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "EIS"
  ex_code = "PZ"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Behavioral Health" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient Behavioral Health" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Behavioral Health" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient Behavioral Health" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient Behavioral Health" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "IP Substance Abuse" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "IP Substance Abuse" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "BE"
elsif essette_sub_class == "Observation" && status == "Approved" && status_reason == "Case Rate"
  ex_code = "9A"
elsif essette_sub_class == "Observation" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Observation" && status == "Approved" && status_reason == "Observation"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Approved" && status_reason == "With Additional Info"
  ex_code = "PS"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Approved" && status_reason == "SNF"
  ex_code = "BD"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Approved" && status_reason == "Secondary Only"
  ex_code = "BD"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Medical Criteria Met"
  ex_code = "A1"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Transplant Procedure"
  ex_code = "AB"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Services Not Available In-Network"
  ex_code = "A7"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Pending Admission"
  ex_code = "9A"
elsif essette_sub_class == "Clinical Trial" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "A6"
elsif essette_sub_class == "Transplant" && status == "Approved" && status_reason == "Inpatient"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Inpatient" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Denied" && status_reason == "Non-Covered Services (SNF, Rehabs)"
  ex_code = "WL"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "IP Behavioral Health" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "IP Behavioral Health" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "IP Behavioral Health" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "IP Behavioral Health" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "IP Behavioral Health" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "IP Substance Abuse" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Denied" && status_reason == "Services Continued at Higher Level (LTACH)"
  ex_code = "BB"
elsif essette_sub_class == "Observation" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "Observation" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Observation" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Observation" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Observation" && status == "Denied" && status_reason == "Skilled Criteria Not Met"
  ex_code = "WR"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Non-Covered Services (SNF, Rehabs)"
  ex_code = "WL"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Administration Denial"
  ex_code = "9A"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Requested Services Considered Experimental"
  ex_code = "94"
elsif essette_sub_class == "Transplant" && status == "Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Inpatient" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "IP Behavioral Health" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "IP Substance Abuse" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Observation" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Transplant" && status == "Interim Approval" && status_reason == "INPT"
  ex_code = "9A"
elsif essette_sub_class == "Inpatient" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "IP Behavioral Health" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "IP Behavioral Health" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "IP Behavioral Health" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "IP Behavioral Health" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "IP Substance Abuse" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "IP Substance Abuse" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "IP Substance Abuse" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "IP Substance Abuse" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Observation" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Observation" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Observation" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Observation" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Transplant" && status == "Overturned on Appeal (Reopen)" && status_reason == "ALJ"
  ex_code = "A1"
elsif essette_sub_class == "Transplant" && status == "Overturned on Appeal (Reopen)" && status_reason == "KEPRO"
  ex_code = "A1"
elsif essette_sub_class == "Transplant" && status == "Overturned on Appeal (Reopen)" && status_reason == "MAXIMUS"
  ex_code = "A1"
elsif essette_sub_class == "Transplant" && status == "Overturned on Appeal (Reopen)" && status_reason == "Medigold Appeal"
  ex_code = "A1"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Cancel EIS"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Cancel ACO"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BF"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "IP Behavioral Health" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BF"
elsif essette_sub_class == "IP Behavioral Health" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BF"
elsif essette_sub_class == "IP Behavioral Health" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BF"
elsif essette_sub_class == "IP Behavioral Health" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BF"
elsif essette_sub_class == "IP Behavioral Health" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "IP Substance Abuse" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Reimbursement Change"
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BE"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BD"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BD"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BD"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Reimbursement Change"
  ex_code = "BD"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BD"
elsif essette_sub_class == "Transplant" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "BE"
elsif essette_sub_class == "Transplant" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "BE"
elsif essette_sub_class == "Transplant" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "BE"
elsif essette_sub_class == "Transplant" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "BE"
elsif essette_sub_class == "Transplant" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "Observation" && status == "Post Approval Change" && status_reason == "Date Change"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Post Approval Change" && status_reason == "Provider Change"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Post Approval Change" && status_reason == "Procedure Change"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Post Approval Change" && status_reason == "Readmission"
  ex_code = "PS"
elsif essette_sub_class == "Observation" && status == "Post Approval Change" && status_reason == "Withdrawn"
  ex_code = "BL"
elsif essette_sub_class == "Observation" && status == "Post Denial Change" && status_reason == "Withdrawn"
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BE"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BF"
elsif essette_sub_class == "IP Behavioral Health" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BE"
elsif essette_sub_class == "IP Substance Abuse" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BE"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BE"
elsif essette_sub_class == "Observation" && status == "Reopen Approved" && status_reason == ""
  ex_code = "PS"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BD"
elsif essette_sub_class == "Transplant" && status == "Reopen Approved" && status_reason == ""
  ex_code = "BE"
elsif essette_sub_class == "Inpatient" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Denied" && status_reason == "Non-Covered Services (SNF, Rehabs)"
  ex_code = "WL"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Denied" && status_reason == "Member Not Eligible"
  ex_code = "M3"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Inpatient Rehabilitation" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "IP Behavioral Health" && status == "Reopen Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "IP Behavioral Health" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "IP Behavioral Health" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "IP Substance Abuse" && status == "Reopen Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "IP Substance Abuse" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "IP Substance Abuse" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Reopen Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Long Term Acute Care Hospital" && status == "Reopen Denied" && status_reason == "Services Continued at Higher Level (LTACH)"
  ex_code = "BB"
elsif essette_sub_class == "Observation" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Observation" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Reopen Denied" && status_reason == "Skilled Criteria Not Met"
  ex_code = "WR"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Reopen Denied" && status_reason == "Non-Covered Services (SNF, Rehabs)"
  ex_code = "WL"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Skilled Nursing Facility" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Transplant" && status == "Reopen Denied" && status_reason == "Services Available In-Network"
  ex_code = "BC"
elsif essette_sub_class == "Transplant" && status == "Reopen Denied" && status_reason == "Not Medically Necessary"
  ex_code = "WR"
elsif essette_sub_class == "Transplant" && status == "Reopen Denied" && status_reason == "Requested Medical Documentation Not Received"
  ex_code = "WS"
elsif essette_sub_class == "Transplant" && status == "Reopen Denied" && status_reason == "Requested Services Considered Experimental"
  ex_code = "94"

Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-21_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-21_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<care_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter the first SNF date into the "est_admit" image
	And in the "hospital_services" page I enter the total SNF days into the "auth_days" image
	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first SNF date into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_requested" image
	And the test pauses for "2" seconds
  And in the "authorized_services" page I enter the first SNF date into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the last SNF date into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the total SNF days into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 01302017 | 2017-01-30T15:53:27+00:00 |  | 000083548-01 | Charles | Spitzer | BREATHEAMERICA COLUMBUS | 931235 | RAYMOND M | PONGONIS | 1023274792 | WINCHESTER PLACE NURSING & REHABILIT | 930697 | 1962829663 | WINCHESTER PLACE NURSING & REHABILIT | 1962829663 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER PLACE NURSING & REHABILIT | 03202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01262017 | 03052017 | Standard |  |  | 2017-01-26 | : | 0 | 2017-03-06 |  | 2017-03-14 | 2017-03-14 | 39 | 39 | Concurrent Review | Approved | A170202043 | , , , K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 03202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7499 | 7499 | Approved | 39 | Revenue | RV | rcvd MDS with RUG score of RHB, DC info NOMNC MDS with RUG RHB10 received, see attached documents for SNF closing Rf sent to facility | 01262017, 01272017, 01282017, 01292017, 01302017, 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39 |
| 02062017 | 2017-02-06T11:52:14+00:00 |  | 000061035-01 | ARTHUR | WARD | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 03202017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02032017 | 02132017 | Standard |  |  | 2017-02-03 | Contract/RUG: 17/RUB01 (PER MDS) = $5813.99 | 0 | 2017-02-14 | 2017-02-15 | 2017-02-15 | 2017-02-15 | 11 | 11 | Concurrent Review | Approved | A170206102 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03202017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP | KEPRO FTA filed, D/C info  NOMNC  DENC AND MDS Received | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , , , , , , ,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 02132017 | 2017-02-13T09:05:59+00:00 |  | 000111155-01 | Judith | Schlesinger | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03202017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 02092017 | 03052017 | Standard |  |  | 2017-02-09 | : | 0 | 2017-03-06 | 2017-03-08 | 2017-02-21 | 2017-03-06 | 25 | 25 | Concurrent Review | Approved | A170213071 | , , E119, E785, I10, M4800, Z9181 | History of falling | ICD10 | 03202017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8583 | 8583 | Approved | 25 | Revenue | RV | KEPRO FTA filed 2/20/16, MDS with RUG RUC10, DC  info NOMNC received, DENC received | 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , , ,  | 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25 |

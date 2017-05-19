Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-18_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03222017 | 2017-03-22T14:53:07+00:00 |  | 000045016-01 | REGINA | ADAMS | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170322110 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05182017 | 05152017 | 05182017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03302017 | 2017-03-30T05:44:50+00:00 |  | 000076344-01 | Terry | Shuman | OSU GENERAL INTL MED LLC | 949890 | MARY S | VONDRA | 1174966634 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292017 | 03312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170331002 | A419, E871, G43A0, I10, K529, R0689, Z794 | Long term (current) use of insulin | ICD10 | 05182017 | 03292017 | 03312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132017 | 2017-04-13T12:01:28+00:00 |  | 000046787-01 | NORMA | BAILEY | OHIO PLASTIC SURGERY SPE | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413039 | C44622 | Squamous cell carcinoma skin/ right upper limb, inc shoulder | ICD10 | 05182017 | 04202017 | 05052017 | 15734, 15100, 14301, 14302 | SKIN TISSUE REARRANGE ADD-ON | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 16, 16, 16, 16 | CPT | C4 |  |  |  | 15.0 |
| 04252017 | 2017-04-25T09:37:52+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425037 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 05182017 | 05092017 | 05172017 | 41110, 38724, 15120, 43246, 15758, 15757 | FREE SKIN DLAP WITH MICROVASCULAR ANASTOMOSIS | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 9, 9, 9, 9, 9, 9 | CPT | C4 |  |  |  | 5.0 |
| 04252017 | 2017-04-25T11:14:42+00:00 |  | 000064091-01 | MARGUERITE | CONLEY | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425074 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 05182017 | 05152017 | 05182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04262017 | 2017-04-26T11:04:13+00:00 | 250690557115 | 000052800-01 | WALTER | LINK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 04252017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426032 | M25559 | Pain in unspecified hip | ICD10 | 05182017 | 04252017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 04272017 | 2017-04-27T08:48:18+00:00 |  | 000117778-01 | Victoria | Sargent | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04262017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427057 | R109 | Unspecified abdominal pain | ICD10 | 05182017 | 04262017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04272017 | 2017-04-27T09:55:39+00:00 |  | 000057197-01 | GORDON | GARRETTSON JR | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05152017 | 05182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427091 | R338 | Other retention of urine | ICD10 | 05182017 | 05152017 | 05182017 | 52601 | TRANSURETHRAL RESECT PROSTATE | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 04282017 | 2017-04-28T10:19:43+00:00 |  | 000109016-01 | Mary | Feltz | ALLIANCE PHYSICIANS INC | 914727 | GURPAL S | AHLUWALIA | 1740314954 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428009 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05182017 | 05162017 | 05182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 04282017 | 2017-04-28T09:35:43+00:00 |  | 000115828-01 | Joanne | Smith | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04272017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428063 | K921 | Melena | ICD10 | 05182017 | 04272017 | 04292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05012017 | 2017-05-01T09:41:46+00:00 |  | 000110640-01 | Terry | Budd | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04292017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501090 | D649, I959, N189, N289, R509 | Fever, unspecified | ICD10 | 05182017 | 04292017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05012017 | 2017-05-01T13:09:15+00:00 |  | 000049747-01 | BETTY | BURDEN | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501094 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05182017 | 05152017 | 05182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 05022017 | 2017-05-02T08:47:20+00:00 |  | 000113780-01 | James | King | THE CHRIST HSP CARDIOVAS | 944705 | JOANNA | ENGLISH | 1730145590 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 05182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05012017 | 05062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503009 | I249, I509, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 05182017 | 05012017 | 05062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032017 | 2017-05-03T10:54:50+00:00 |  | 000015460-01 | RICHARD | PATTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05022017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503022 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 05182017 | 05022017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05042017 | 2017-05-04T08:11:55+00:00 | 025220796-7115 | 000107204-01 | Sharon | Carter | ORTHO & NEURO CONSULTS I | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05182017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05162017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504002 | M4316, M4806, M5137 | Other intervertebral disc degeneration, lumbosacral region | ICD10 | 05182017 | 05162017 | 05172017 | 22633, 22634, 22853, 22842, 20936, 20930, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05052017 | 2017-05-05T10:27:50+00:00 |  | 000078552-01 | Charlene | Jefferson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05042017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505021 | J159 | Unspecified bacterial pneumonia | ICD10 | 05182017 | 05042017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05052017 | 2017-05-05T10:43:38+00:00 |  | 000112052-01 | WILLIAM | ALLEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05042017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505026 | C679, E872, E875, N179 | Acute kidney failure, unspecified | ICD10 | 05182017 | 05042017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05082017 | 2017-05-08T15:50:07+00:00 |  | 000113866-01 | Victoria | Ellis | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05062017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508084 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 05182017 | 05062017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05092017 | 2017-05-09T08:00:25+00:00 |  | 000049489-01 | SANDRA | STOTTLEMIRE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05082017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509011 | K625 | Hemorrhage of anus and rectum | ICD10 | 05182017 | 05082017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092017 | 2017-05-09T08:07:30+00:00 |  | 000102362-01 | JEFFREY | MOORE | MOUNT CARMEL HLTH SYS | 905652 | MARIA H | MAPA | 1982620753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05082017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509013 | R0602 | Shortness of breath | ICD10 | 05182017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082017 | 2017-05-08T13:01:24+00:00 |  | 000090894-01 | Sharon | Chaffin | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509057 | G9340, G936 | Cerebral edema | ICD10 | 05182017 | 05072017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102017 | 2017-05-10T11:14:54+00:00 |  | 000111932-01 | Donald | Brougher | MOUNT CARMEL HLTH PRVDRS | 904972 | BRADFORD B | MULLIN | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05092017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510043 | S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 05182017 | 05092017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102017 | 2017-05-10T11:32:00+00:00 |  | 000097216-01 | Thelma | Mills | FAYETTE COUNTY MEM HSP C | 905606 | WILLIAM C | STEVENSON | 1922181528 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511005 | K635 | Polyp of colon | ICD10 | 05182017 | 05102017 | 05172017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 4.0 |
| 05112017 | 2017-05-11T11:04:41+00:00 |  | 000045584-01 | THOMAS | SHEPARD SR | MOUNT CARMEL HLTH SYS | 905652 | MARIA H | MAPA | 1982620753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05102017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511030 | G4751 | Confusional arousals | ICD10 | 05182017 | 05102017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05112017 | 2017-05-11T10:22:45+00:00 |  | 000064676-01 | ROGER | MCDANIEL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511063 | E875, R0902, R092 | Respiratory arrest | ICD10 | 05182017 | 05102017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05122017 | 2017-05-12T08:24:08+00:00 |  | 000078422-01 | Michelle | Kahn | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512039 | J189, K567 | Ileus, unspecified | ICD10 | 05182017 | 05102017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T08:53:16+00:00 |  | 000085277-01 | John | Howard | SURG ASSOC OF SPRINGFIEL | 902015 | RICHARD M | NEDELMAN | 1629086855 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512057 | K352 | Acute appendicitis with generalized peritonitis | ICD10 | 05182017 | 05112017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05122017 | 2017-05-12T15:45:07+00:00 |  | 000051895-01 | GIDDIONS | MARCUM | CLEVELAND CLINIC FOUNDAT | 950841 | USMAN | AHMAD | 1013171628 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170513010 | D508 | Other iron deficiency anemias | ICD10 | 05182017 | 05112017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05142017 | 2017-05-14T16:27:01+00:00 |  | 000083769-01 | Phyllis | Stevens | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515004 | R0602, R1111 | Vomiting without nausea | ICD10 | 05182017 | 05112017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05152017 | 2017-05-15T07:19:13+00:00 |  | 000027702-01 | JOANN | CLAGGETT | OSU INTERNAL MED LLC | 943364 | NATHAN R | WRIGHT | 1376837005 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515006 | G9340 | Encephalopathy, unspecified | ICD10 | 05182017 | 05122017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T11:10:14+00:00 |  | 000026133-01 | DANA | MEDEIROS FARRANT | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05142017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515046 | M25559 | Pain in unspecified hip | ICD10 | 05182017 | 05142017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T11:33:36+00:00 |  | 000099738-01 | Helen | Sonneborn | AAMIR KHAN MD INC | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05132017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515067 | R29810 | Facial weakness | ICD10 | 05182017 | 05132017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T12:53:26+00:00 |  | 000101837-01 | Imogene | Spaulding | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05142017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515075 | N390 | Urinary tract infection, site not specified | ICD10 | 05182017 | 05142017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T12:57:10+00:00 |  | 000070169-01 | Robert | Schreiber | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05122017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515078 | E871, E876 | Hypokalemia | ICD10 | 05182017 | 05122017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05152017 | 2017-05-15T14:00:44+00:00 |  | 000063096-01 | RITA | SEVERING | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515115 | R739 | Hyperglycemia, unspecified | ICD10 | 05182017 | 05122017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T15:49:49+00:00 |  | 000005978-01 | RUTH | REBER | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | THE TIMKEN COMPANY | Reports | ACO | Inpatient | 05142017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515118 | I4891 | Unspecified atrial fibrillation | ICD10 | 05182017 | 05142017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T14:23:55+00:00 |  | 000028263-01 | ROBERT | HUPP | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515131 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 05182017 | 05132017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T16:33:11+00:00 |  | 000004042-01 | MARY | FRASHER | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05142017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515146 | I639 | Cerebral infarction, unspecified | ICD10 | 05182017 | 05142017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T15:58:14+00:00 |  | 000059421-01 | PEGGY | PRATER | HENDRICKS REGIONAL HEALTH | 900168 |  | HENDRICKS REGIONAL HEALTH | 0 | HENDRICKS REGIONAL HEALTH | 900168 | 0 | HENDRICKS REGIONAL HEALTH | 0 | Inpatient | IP | Concurrent Review | CONC |  | HENDRICKS REGIONAL HEALTH | 05182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516016 | M84359A | Stress fracture, hip, unspecified, init encntr for fracture | ICD10 | 05182017 | 05142017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T10:37:02+00:00 |  | 000060252-01 | JUANITA | FORREST | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516018 | G9340 | Encephalopathy, unspecified | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T10:51:21+00:00 | 026016549-7134 | 000050513-01 | SAM | JONES | CEN OH PRIMARY CARE SPEC | 937053 | JOHN B | KRUPKO | 1023124534 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516023 | E875 | Hyperkalemia | ICD10 | 05182017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:06:50+00:00 | 025309471-7135 | 000056803-01 | EDWARD | JOHNSON | COPC CENTRAL OHIO PRIMAR | 934893 | KIMBERLY A | STOCK | 1053307827 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | EMR | ACO | Inpatient | 04152017 | 05182017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516029 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 05182017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T12:06:44+00:00 |  | 000082549-01 | Frank | Bernthold | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05152017 | 05182017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516064 | J159 | Unspecified bacterial pneumonia | ICD10 | 05182017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T11:29:04+00:00 |  | 000081601-01 | Kristi | Marshall | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | Flexible Choice PPO | Reports | EIS | Inpatient | 05162017 | 05182017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517029 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05182017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T09:18:30+00:00 |  | 000043253-01 | GEORGE | DRAKE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05182017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170515020 | S32599A | Oth fracture of unsp pubis, init encntr for closed fracture | ICD10 | 05182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |

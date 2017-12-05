Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-04_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image

	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"



		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 11302017 | 2017-11-30T15:52:10+00:00 | 253024027335 | 000109380-01 | ROBERT | SCHMIDT | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11302017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130110 | E8352 | Hypercalcemia | ICD10 | 12032017 | 11302017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12032017 | 2017-12-03T20:48:37+00:00 |  | 000073481-01 | James | Cheadle | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12022017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171203003 | I509 | Heart failure, unspecified | ICD10 | 12032017 | 12022017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12012017 | 2017-12-01T09:18:01+00:00 | 260273097334 | 000077169-01 | Sula | Holley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Observation | Inpatient | 11302017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201006 | R188 | Other ascites | ICD10 | 12032017 | 11302017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12032017 | 2017-12-03T21:10:14+00:00 |  | 000085569-01 | Carl | Budnick | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12022017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171203004 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 12032017 | 12022017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12032017 | 2017-12-03T21:17:24+00:00 |  | 000002762-01 | LAVERNE | WARNER | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12022017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171203005 | R079 | Chest pain, unspecified | ICD10 | 12032017 | 12022017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11302017 | 2017-11-30T10:14:41+00:00 | 256623417333 | 000019335-01 | RODGER | HEISER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11292017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130033 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 12042017 | 11292017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T09:59:44+00:00 |  | 000076813-01 | Donald | Batteiger | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11282017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129095 | R339 | Retention of urine, unspecified | ICD10 | 12042017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11302017 | 2017-11-30T10:40:19+00:00 |  | 000074477-01 | Marvin | Madinger | ADENA MEDICAL GROUP LLC | 902397 | KINGSLEY A | LARTEY | 1376510289 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11302017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130090 | R079 | Chest pain, unspecified | ICD10 | 12042017 | 11302017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T14:49:38+00:00 |  | 000089341-01 | Arthur | Nichols | ALLIANCE PHYSICIANS INC | 907824 | RAYMOND S | RUSSELL | 1447206933 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120111 | N138, N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 12042017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T11:23:30+00:00 | 260875517332 | 000059879-01 | LOIS | GROOMS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11292017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129060 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12042017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T11:26:23+00:00 | 252152927332 | 000004774-01 | MARTHA | ORTLIEB | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129062 | L03818 | Cellulitis of other sites | ICD10 | 12042017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T16:59:10+00:00 |  | 000085799-01 | Carl | Jones | S DAYTON ACUTE CARE CNSL | 902589 | ROBERT | SAWYER | 1730160268 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11182017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121008 | J189, R0602, R0902 | Hypoxemia | ICD10 | 12042017 | 11182017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11212017 | 2017-11-21T08:17:32+00:00 |  | 000076157-01 | Shirley | Ward | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11202017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121013 | I951, M25512, S42032A | Disp fx of lateral end of left clavicle, init for clos fx | ICD10 | 12042017 | 11202017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09152017 | 2017-09-15T13:32:53+00:00 |  | 000085035-01 | ROLF | HEGELE | ORTHO INSTITUTE OF DAYTO | 916279 | NICOLAS E | GRISONI | 1104959220 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Pre-Service | PRE |  | INDU & RAJ SOIN MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10102017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170915090 | M4806, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12042017 |  | 10102017 | 63047, 63048, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 1, 1, 1 | CPT | C4 |  |  |  | 1.0 |
| 11212017 | 2017-11-21T10:05:00+00:00 |  | 000075779-01 | DAN | GAUTHIER | COMMUNITY HSPIST LLC | 904071 | JOHAN | WORNDLE | 1295840833 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 12042017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121037 | D509, R0602 | Shortness of breath | ICD10 | 12042017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12032017 | 2017-12-03T14:40:38+00:00 |  | 000000705-01 | Gloria | Ross | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12022017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204012 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12042017 | 12022017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T12:08:15+00:00 |  | 000114216-01 | CHRISTINE | MALETTA | HOSPITALIST MEDICINE PHY | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12042017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122057 | I471 | Supraventricular tachycardia | ICD10 | 12042017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T16:22:23+00:00 |  | 000096177-01 | John | Conley | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12042017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129002 | W3400XA | Accidental discharge from unsp firearms or gun, init encntr | ICD10 | 12042017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T11:01:10+00:00 |  | 000075062-01 | Russell | Weidger | COSHOCTON REGIONAL MEDIC | 945164 | RAJENE G | FOX | 1225401623 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 12042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11242017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128041 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12042017 | 11242017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T15:27:07+00:00 |  | 000086359-01 | George | Walker | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127055 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 12042017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T09:19:38+00:00 |  | 000047167-01 | RAYMOND | LONG | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12022017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204041 | K1370, W19XXXA | Unspecified fall, initial encounter | ICD10 | 12042017 | 12022017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T14:49:49+00:00 |  | 000080845-01 | Rose | Pacino | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11252017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128060 | I214, J90 | Pleural effusion, not elsewhere classified | ICD10 | 12042017 | 11252017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T08:15:12+00:00 |  | 000115494-01 | ROSINA | COOK | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11212017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122013 | J189 | Pneumonia, unspecified organism | ICD10 | 12042017 | 11212017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12012017 | 2017-12-01T14:29:12+00:00 |  | 000012120-01 | RUBY | MARTINDALE | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11302017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201059 | R6889 | Other general symptoms and signs | ICD10 | 12042017 | 11302017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11302017 | 2017-11-30T09:52:33+00:00 |  | 000070473-01 | Sandra | Powell | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11302017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130082 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12042017 | 11302017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T10:21:28+00:00 |  | 000044533-01 | PAULINE | RUSSELL | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11292017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129102 | J189 | Pneumonia, unspecified organism | ICD10 | 12042017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T11:53:23+00:00 |  | 000016693-01 | DORLA | BERRY | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013046 | R0902 | Hypoxemia | ICD10 | 12042017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T12:13:34+00:00 |  | 000060510-01 | JOANN | MARCZIKA | COPC CENTRAL OHIO PRIMAR | 910900 | RICHARD G | BAKKER | 1528244357 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019064 | R109 | Unspecified abdominal pain | ICD10 | 12042017 | 10182017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T15:34:47+00:00 |  | 000084624-01 | Sharon | Bolen | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204146 | R6889 | Other general symptoms and signs | ICD10 | 12042017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11272017 | 2017-11-27T14:31:00+00:00 |  | 000097605-01 | Deborah | Reeves | INTERNAL MED CARE INC | 918449 | RACHEL M | MAST | 1952552812 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128082 | E860, A0472 | A0472 | ICD10 | 12042017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T15:38:34+00:00 | 025476038-7336 | 000114991-01 | Michael | Kirkland | COPC CENTRAL OHIO PRIMAR | 911475 | JAYMIN | PATEL | 1780785568 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 12022017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204147 | N179 | Acute kidney failure, unspecified | ICD10 | 12042017 | 12022017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11282017 | 2017-11-28T10:27:46+00:00 |  | 000035147-01 | Thelma | Layman | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 12042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11232017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129022 | J189 | Pneumonia, unspecified organism | ICD10 | 12042017 | 11232017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T14:40:44+00:00 |  | 000101248-01 | James | Key | GRANDVIEW HOSPITAL & SOU | 902800 | ARVIN K | NANDA | 1184624413 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12012017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204148 | I447 | Left bundle-branch block, unspecified | ICD10 | 12042017 | 12012017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T10:12:12+00:00 | 252198927335 | 000011848-01 | JOAN | PEARSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12042017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12012017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204063 | R799 | Abnormal finding of blood chemistry, unspecified | ICD10 | 12042017 | 12012017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T10:03:46+00:00 | 252616467336 | 000062734-01 | JON | NOE | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12022017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204059 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12042017 | 12022017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12012017 | 2017-12-01T09:24:27+00:00 | 251354777334 | 000054987-01 | SHARON | BAKER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11302017 | 12042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201012 | M6281 | Muscle weakness (generalized) | ICD10 | 12042017 | 11302017 | 12042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |

Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-08_OBS
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
| 12292017 | 2017-12-29T11:35:45+00:00 |  | 000085935-01 | Shirley | Filson | PULMONARY MED OF DAYTON | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229056 | M62838, R262 | Difficulty in walking, not elsewhere classified | ICD10 | 01082018 | 12282017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T12:22:08+00:00 |  | 000079182-01 | Marilyn | Becker | PULMONARY MED OF DAYTON | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228050 | J101, R0600 | Dyspnea, unspecified | ICD10 | 01082018 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12132017 | 2017-12-13T09:43:51+00:00 |  | 000090306-01 | Lorna | Schoenberger | SYCAMORE PRIMARY CARE GR | 947691 | MICHAEL R | SUN | 1720320211 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213074 | M62830 | Muscle spasm of back | ICD10 | 01082018 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:11:59+00:00 |  | 000102059-01 | Heidi | Redd | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221019 | R109, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 01082018 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T11:02:16+00:00 |  | 000082376-01 | Jack | Ogle | HOSPITALIST MEDICINE PHY | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226122 | O8629, R410 | Disorientation, unspecified | ICD10 | 01082018 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T10:44:24+00:00 |  | 000037957-01 | GLADYS | GEANEKOPULOS | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104083 | E860, E871 | Hypo-osmolality and hyponatremia | ICD10 | 01082018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01062018 | 2018-01-06T12:09:36+00:00 |  | 000106194-01 | June | Radcliff | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01052018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108023 | M79639, R6884 | Jaw pain | ICD10 | 01082018 | 01052018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T13:48:24+00:00 |  | 000070482-01 | Ginger | Shepherd | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105064 | R079 | Chest pain, unspecified | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T08:43:52+00:00 |  | 000097609-01 | Janet | Graf | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01052018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108030 | J90, R079 | Chest pain, unspecified | ICD10 | 01082018 | 01052018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T09:37:48+00:00 |  | 000097666-01 | William | Coakley Jr | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01062018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108032 | R6889 | Other general symptoms and signs | ICD10 | 01082018 | 01062018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T13:58:09+00:00 |  | 000121397-01 | Elizibeth | Gearheart | HOSPITALIST MEDICINE PHY | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105059 | A419, D709 | Neutropenia, unspecified | ICD10 | 01082018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T15:05:28+00:00 |  | 000015215-01 | LOUISE | WALKER | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104018 | R6889 | Other general symptoms and signs | ICD10 | 01082018 | 01022018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T08:39:44+00:00 |  | 000106801-01 | Richard | Birt | APOGEE MED GRP OHIO INC | 945647 | RIDHWAN Y | BABA | 1225318397 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12312017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102064 | M6281, R270, R278 | Other lack of coordination | ICD10 | 01082018 | 12312017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01022018 | 2018-01-02T14:31:16+00:00 |  | 000085626-01 | John | Karr | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103088 | M7021 | Olecranon bursitis, right elbow | ICD10 | 01082018 | 01022018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01042018 | 2018-01-04T17:51:48+00:00 |  | 000100960-01 | Elizabeth | David | HOSPITALIST MEDICINE PHY | 911535 | RAVI | BELLALA | 1649483801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01022018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105014 | R197, R4182 | Altered mental status, unspecified | ICD10 | 01082018 | 01022018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T06:45:51+00:00 |  | 000097200-01 | Adrian | Bowen | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108040 | N200 | Calculus of kidney | ICD10 | 01082018 | 01072018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T14:53:05+00:00 |  | 000116051-01 | DENNIS | JUSTICE | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 03092018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204138 | I7389, M869 | Osteomyelitis, unspecified | ICD10 | 01082018 | 12062017 | 12092017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  | 3.0 |
| 01022018 | 2018-01-02T08:50:10+00:00 |  | 000086213-01 | Michael | Belford | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12312017 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102068 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01082018 | 12312017 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01022018 | 2018-01-02T10:03:13+00:00 | 260484227365 | 000119698-01 | Fred | Love | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12312017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102018 | M25551 | Pain in right hip | ICD10 | 01082018 | 12312017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01052018 | 2018-01-05T08:02:46+00:00 |  | 000115013-01 | Roger | Spangler | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105011 | R079 | Chest pain, unspecified | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T14:56:39+00:00 |  | 000074549-01 | Lyllian | Helsel | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211149 | R569 | Unspecified convulsions | ICD10 | 01082018 | 12112017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T09:27:34+00:00 |  | 000108361-01 | Mary | Salamay | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01022018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103080 | M545, Z0000 | Encntr for general adult medical exam w/o abnormal findings | ICD10 | 01082018 | 01022018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12232017 | 2017-12-23T12:25:49+00:00 |  | 000045553-01 | Ronald | Young | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226023 | I509, R0600 | Dyspnea, unspecified | ICD10 | 01082018 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000032559-01 | LARRY | MILACEK | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104052 | I749 | Embolism and thrombosis of unspecified artery | ICD10 | 01082018 | 01032018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T05:33:38+00:00 |  | 000070746-01 | Myrna | Ventress | ER MED PHYS OF IREDELL C | 926511 | MEGAN | LEONARD | 1467726323 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01052018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105026 | J189, J4521 | Mild intermittent asthma with (acute) exacerbation | ICD10 | 01082018 | 01052018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000017997-01 | LARRY | WALSH | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104058 | R55 | Syncope and collapse | ICD10 | 01082018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T10:01:43+00:00 |  | 000002524-01 | JOHN | DYE | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12232017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226097 | R531, R569 | Unspecified convulsions | ICD10 | 01082018 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01052018 | 2018-01-05T14:43:14+00:00 |  | 000019926-01 | WILLIAM | HOCHRADEL | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105075 | I4891 | Unspecified atrial fibrillation | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T15:09:24+00:00 |  | 000054202-01 | JUDITH | WARNER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105081 | R05 | Cough | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T13:03:24+00:00 |  | 000008425-01 | LINDA | WILKS | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105050 | C3490, E039, I10, K922, E7800 | PURE HYPERCHOLESTEROLEMIA, UNSPECIFIED | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T12:35:47+00:00 |  | 000097764-01 | Barbara | Molen | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828091 | M4806 | Spinal stenosis, lumbar region | ICD10 | 01082018 | 11012017 | 11042017 | 22558, 22585, 22853, 22845, 22612, 22614, 22842 | SEGMENTAL FIXATION (EX. LUQUE TECH.) SEE CPT FOR OTHER EXAMPLES... | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10302017 | 2017-10-30T11:43:31+00:00 |  | 000059504-01 | SYLVIA | TRENT | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10292017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030084 | R55 | Syncope and collapse | ICD10 | 01082018 | 10292017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T11:44:06+00:00 |  | 000115711-01 | Garry | Brown | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Observation | OBSV | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 01082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 01062018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108098 | R4182 | Altered mental status, unspecified | ICD10 | 01082018 | 01062018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12222017 | 2017-12-22T14:51:15+00:00 |  | 000099825-01 | Michael | Brown | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12212017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222065 | R0981 | Nasal congestion | ICD10 | 01082018 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T16:09:42+00:00 |  | 000078326-01 | William | Duley | S DAYTON ACUTE CARE CNSL | 903782 | SIVAKRISHNA | BHANDARU | 1629017884 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12252017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227043 | R0902, R296 | Repeated falls | ICD10 | 01082018 | 12252017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T16:06:25+00:00 |  | 000087174-01 | Linda | Armstrong | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12232017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227034 | I480, J111, J441, R0902 | Hypoxemia | ICD10 | 01082018 | 12232017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T14:22:51+00:00 |  | 000107470-01 | Richard | Pummill | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105061 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T12:55:05+00:00 |  | 000112831-01 | Thomas | Ash | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105052 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 01082018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01032018 | 2018-01-03T17:16:29+00:00 |  | 000106960-01 | Elsie | Storer | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01082018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104002 | A419, I4891, J181 | Lobar pneumonia, unspecified organism | ICD10 | 01082018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
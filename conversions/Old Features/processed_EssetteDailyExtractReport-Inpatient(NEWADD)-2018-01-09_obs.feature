Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-09_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-09_OBS
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
| 01032018 | 2018-01-03T14:38:59+00:00 |  | 000075822-01 | Terry | Anderson | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104008 | G061, M4646 | Discitis, unspecified, lumbar region | ICD10 | 01092018 | 01022018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12112017 | 2017-12-11T08:45:26+00:00 |  | 000115973-01 | Bryan | Gadd | HOSPITALIST MEDICINE PHY | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01092018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12092017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211057 | L03116 | Cellulitis of left lower limb | ICD10 | 01092018 | 12092017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T12:55:19+00:00 |  | 000076443-01 | Barbara | Trigg | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01062018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108121 | E162, R531 | Weakness | ICD10 | 01092018 | 01062018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T12:58:38+00:00 |  | 000039159-01 | JEAN | TYLER | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108133 | E875 | Hyperkalemia | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T09:27:34+00:00 |  | 000014141-01 | NORMAN | RENZ | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103078 | R002 | Palpitations | ICD10 | 01092018 | 01022018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01032018 | 2018-01-03T09:27:34+00:00 |  | 000103610-01 | David | Turner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103082 | N151, N179, T83092A | MECH COMPL OF NEPHROSTOMY CATHETER, INITIAL ENCOUNTER | ICD10 | 01092018 | 01022018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T16:06:44+00:00 |  | 000078984-01 | Gaye | Ferguson | SWEST INPATIENT PHYS LLC | 931477 | ROBERT W | MOORE | 1780741058 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12252017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226189 | R0602, R0902 | Hypoxemia | ICD10 | 01092018 | 12252017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12202017 | 2017-12-20T11:11:30+00:00 |  | 000062206-01 | THOMAS | BRINK | MOUNT CARMEL HLTH PRVDRS | 931830 | AMIT | ARORA | 1619143799 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01052018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220056 | I739 | Peripheral vascular disease, unspecified | ICD10 | 01092018 | 01052018 | 01062018 | 35556 | BYPASS GR, VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01032018 | 2018-01-03T11:57:57+00:00 |  | 000035029-01 | PATRICIA | MILLER | HOSPITALIST MEDICINE PHY | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103093 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 01092018 | 01022018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T09:00:21+00:00 |  | 000053986-01 | WANDA | BROWN | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12302017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102072 | S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 01092018 | 12302017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T08:59:24+00:00 |  | 000094094-01 | Judy | Selby | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105020 | R109 | Unspecified abdominal pain | ICD10 | 01092018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T13:26:22+00:00 |  | 000111055-01 | Clarence | Wright Jr | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12252017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227012 | I4891, I509 | Heart failure, unspecified | ICD10 | 01092018 | 12252017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01052018 | 2018-01-05T12:38:20+00:00 |  | 000026269-01 | Bertha | Goldfarb | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105049 | J189, R0902 | Hypoxemia | ICD10 | 01092018 | 01042018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01052018 | 2018-01-05T15:59:08+00:00 |  | 000093333-01 | Anna | Kreutz | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105083 | J441, N390 | Urinary tract infection, site not specified | ICD10 | 01092018 | 01042018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T15:31:51+00:00 |  | 000009637-01 | RONALD | SMITH | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12232017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227036 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 12232017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01072018 | 2018-01-07T17:57:52+00:00 |  | 000065198-01 | VERLIE | GUISINGER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01062018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108038 | R079 | Chest pain, unspecified | ICD10 | 01092018 | 01062018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T14:19:02+00:00 |  | 000103192-01 | Gary | Blank | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109022 | N200 | Calculus of kidney | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T16:10:03+00:00 |  | 000115271-01 | Christine | Fitch | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01062018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109060 | I10, R079 | Chest pain, unspecified | ICD10 | 01092018 | 01062018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T16:13:24+00:00 |  | 000091158-01 | Ellen | Estridge | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12252017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227041 | J441, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01092018 | 12252017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T15:26:23+00:00 |  | 000050910-01 | WILLIAM | ZIPF | SOUND INPATIENT PHYS OF | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109052 | R079 | Chest pain, unspecified | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T09:00:30+00:00 |  | 000103192-01 | Gary | Blank | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105021 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 01092018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T10:48:24+00:00 |  | 000110406-01 | Irene | Miller | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12302017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103015 | R0602 | Shortness of breath | ICD10 | 01092018 | 12302017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T08:02:47+00:00 |  | 000105959-01 | Carol | Lowe | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108026 | A419 | Sepsis, unspecified organism | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T11:42:53+00:00 |  | 000085130-01 | Janice | Leece | ARTHUR H WIN MD LLC | 905247 |  | ARTHUR H WIN MD LLC | 1114107166 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108097 | I480, R079 | Chest pain, unspecified | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12272017 | 2017-12-27T14:31:14+00:00 |  | 000092408-01 | Joseph | Schultz | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227088 | J189, R0902 | Hypoxemia | ICD10 | 01092018 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01082018 | 2018-01-08T12:54:31+00:00 |  | 000019530-01 | EVERETT | SHEETS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01052018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108119 | I4891 | Unspecified atrial fibrillation | ICD10 | 01092018 | 01052018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T08:02:22+00:00 |  | 000033786-01 | SHIRLEY | WHITE | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105009 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 01032018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01032018 | 2018-01-03T11:29:27+00:00 |  | 000099814-01 | Helen | Taylor | MERITRA CLINICS LLC | 911415 | NAVEEN | BEKKAM | 1225196371 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103084 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12272017 | 2017-12-27T14:33:42+00:00 |  | 000052158-01 | DONALD | BUSSERT | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227090 | R0902, R509 | Fever, unspecified | ICD10 | 01092018 | 12262017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T16:12:47+00:00 |  | 000031324-01 | CHARLES | STEVENS | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109063 | S060X0A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T16:15:41+00:00 |  | 000079105-01 | Georgia | Jones | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01042018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108008 | R079, R112 | Nausea with vomiting, unspecified | ICD10 | 01092018 | 01042018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T12:02:18+00:00 |  | 000057623-01 | DORSEY | true | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104089 | I639 | Cerebral infarction, unspecified | ICD10 | 01092018 | 01032018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T16:11:36+00:00 |  | 000091644-01 | Linda | Dailey | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109062 | E119, I10, R079 | Chest pain, unspecified | ICD10 | 01092018 | 01072018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01092018 | 2018-01-09T15:13:40+00:00 |  | 000054501-01 | DWAYNE | HAWKES | MEMON, TANWEER A | 931229 | TANWEER A | MEMON | 1053304774 | BAYFRONT HEALTH PORT CHARLOTTE | 914892 | 1053364703 | BAYFRONT HEALTH PORT CHARLOTTE | 1053364703 | Observation | OBSV | Concurrent Review | CONC |  | BAYFRONT HEALTH PORT CHARLOTTE | 01092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109138 | R079 | Chest pain, unspecified | ICD10 | 01092018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T08:57:11+00:00 |  | 000091931-01 | Virginia | McConahy | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228017 | J810 | Acute pulmonary edema | ICD10 | 01092018 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12282017 | 2017-12-28T08:47:16+00:00 |  | 000100358-01 | Pauline | Wing | MIAMI VALLEY HSPISTS GRP | 925537 | JENNIFER | HARTSOCK-VANDI | 1528386604 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 01092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228033 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01092018 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
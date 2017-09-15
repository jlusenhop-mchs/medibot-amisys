Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_OBS
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
| 09012017 | 2017-09-01T09:20:00+00:00 | 250913787243 | 000045547-01 | RONALD | PERKINS | CEN OH PRIMARY CARE SPEC | 936203 | NADINE E | COX | 1982620886 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901012 | I472, Z4502 | Encntr for adjust and mgmt of automatic implntbl card defib | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T10:03:50+00:00 | 252951117243 | 000070943-01 | Gary | Binegar | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901019 | M6281 | Muscle weakness (generalized) | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T08:34:20+00:00 |  | 000006039-01 | DONA | POLING | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901028 | I495 | Sick sinus syndrome | ICD10 | 09052017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:10:28+00:00 |  | 000054527-01 | ROY | MEADE | SOUND PHYSICIANS OF OHI0 | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09022017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905017 | I674, K142 | Median rhomboid glossitis | ICD10 | 09052017 | 09022017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T08:27:19+00:00 |  | 000076505-01 | Carl | Highley | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08172017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820007 | R748 | Abnormal levels of other serum enzymes | ICD10 | 09052017 | 08182017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09042017 | 2017-09-04T11:22:55+00:00 |  | 000109141-01 | BETTY | SCANLON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09032017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905052 | I4891 | Unspecified atrial fibrillation | ICD10 | 09052017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08302017 | 2017-08-30T11:44:26+00:00 |  | 000079624-01 | Thomas | Woods | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830063 | R109 | Unspecified abdominal pain | ICD10 | 09052017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T08:37:49+00:00 |  | 000084516-01 | Dorothy | Dial | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831040 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 09052017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T08:38:02+00:00 |  | 000095013-01 | Gladys | Young | SOUTHEASTERN OHIO PHYS | 921960 | MICHAEL | SARAP | 1275615296 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08312017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901034 | D649, I959 | Hypotension, unspecified | ICD10 | 09052017 | 08312017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T14:20:08+00:00 | 169728837244 | 000034790-01 | JOAN | MOON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905077 | N390 | Urinary tract infection, site not specified | ICD10 | 09052017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T11:39:14+00:00 |  | 000089555-01 | Barbara | Flory | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829090 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09052017 | 08282017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:08:46+00:00 |  | 000108484-01 | Joyce | Strine | INTERNAL MED CARE INC | 918449 | RACHEL M | MAST | 1952552812 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828092 | N201, N23 | Unspecified renal colic | ICD10 | 09052017 | 08252017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T16:17:24+00:00 |  | 000101476-01 | Phyllis | Slayton | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09052017 | Approved | THE TIMKEN COMPANY | Fax | Observation | Inpatient | 08202017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822028 | S32000A | Wedge compression fracture of unsp lumbar vertebra, init | ICD10 | 09052017 | 08202017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09012017 | 2017-09-01T10:14:54+00:00 | 256891807243 | 000088116-01 | Janice | Onocki | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901023 | T85694A | Mech compl of insulin pump, initial encounter | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:49:28+00:00 |  | 000072351-01 | Vernon | Shifflett | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905059 | R338 | Other retention of urine | ICD10 | 09052017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T11:33:22+00:00 |  | 000086994-01 | Erma | Walters | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828113 | N10, N390 | Urinary tract infection, site not specified | ICD10 | 09052017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09012017 | 2017-09-01T09:33:57+00:00 | 250864027243 | 000015331-01 | LUCY | POPP | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901015 | M6281 | Muscle weakness (generalized) | ICD10 | 09052017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T11:59:51+00:00 |  | 000090287-01 | Darla | Campbell | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829092 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09052017 | 08282017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T14:16:21+00:00 | 178653937244 | 000075303-01 | Emma | Gibson | SOUND PHYSICIANS OF OHI0 | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Southeast OH Essential Care | Reports | Observation | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905075 | R109 | Unspecified abdominal pain | ICD10 | 09052017 | 09012017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07252017 | 2017-07-25T14:45:37+00:00 |  | 000049503-01 | CAROLE | FIFE | CEN OH PLASTIC SURG INC | 902335 | JASON B | LICHTEN | 1871586180 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 09012017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170725109 | E65, L304, Z9884, L987 | EXCESSIVE AND REDUNDANT SKIN AND SUBCUTANEOUS TISSUE | ICD10 | 09052017 |  |  | 15830 | EXCISION EXCESSIVE SKIN AND SUBCUTANEOUS TISSUE (INC LIPECTOMY) ABDOMEN | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  | No child records to display. |  |
| 09052017 | 2017-09-05T08:02:02+00:00 |  | 000045771-01 | DANIEL | ANGALICH | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09012017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905002 | J441, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 09052017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T08:53:43+00:00 |  | 000033483-01 | DAVID | WILDERMUTH | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802067 | L03116 | Cellulitis of left lower limb | ICD10 | 09052017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T09:24:08+00:00 | 255284337243 | 000092886-01 | Dwight | Pinkerton | SOUND PHYSICIANS OF OHI0 | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901013 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T14:49:44+00:00 |  | 000089933-01 | Timothy | Kothman | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING HEALTH NETWORK | 950300 | 1568855104 | KETTERING HEALTH NETWORK GENETIC SER | 1568855104 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING HEALTH NETWORK GENETIC SER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831067 | F10129, R270, S0093XA, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 09052017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08012017 | 2017-08-01T08:48:49+00:00 |  | 000064554-01 | TRACY | SARGENT | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801106 | R079 | Chest pain, unspecified | ICD10 | 09052017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T12:24:17+00:00 |  | 000098243-01 | Janet | Short | MARIETTA HLTH CARE PHYS | 932956 | GOYAL | AMANDEEP | 1710273248 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831059 | G459, I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 09052017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08312017 | 2017-08-31T07:51:33+00:00 |  | 000093333-01 | Anna | Kreutz | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831037 | R0600, R109, Z856 | Personal history of leukemia | ICD10 | 09052017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09012017 | 2017-09-01T08:36:14+00:00 |  | 000103630-01 | Larry | Hardwick | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901031 | R55 | Syncope and collapse | ICD10 | 09052017 | 08312017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T07:52:39+00:00 |  | 000024294-01 | RUTH | METTLER | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09022017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905101 | K529, N390 | Urinary tract infection, site not specified | ICD10 | 09052017 | 09022017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T09:21:21+00:00 | 256137837242 | 000067303-01 | ROSA | MILES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831017 | R4182, I160 | HYPERTENSIVE URGENCY | ICD10 | 09052017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T16:15:10+00:00 |  | 000098985-01 | Rosemary | Manahan | COPC CENTRAL OHIO PRIMAR | 911172 | JOO A | LEE | 1598924524 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08192017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822030 | K625 | Hemorrhage of anus and rectum | ICD10 | 09052017 | 08192017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08042017 | 2017-08-04T10:38:01+00:00 |  | 000041295-01 | LANA | NAIRN | LICKING MEM HLTH PROF | 903845 | KENNETH C | PARKER | 1841256765 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804031 | E210 | Primary hyperparathyroidism | ICD10 | 09052017 | 08302017 | 08312017 | 60500 | PARATHYROIDECTOMY OR EXPLORE PARATH | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08312017 | 2017-08-31T08:52:41+00:00 | 251331347243 | 000005014-01 | LARRY | ARNETT | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831008 | K436 | Other and unsp ventral hernia with obstruction, w/o gangrene | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T10:23:18+00:00 | 257752997243 | 000017997-01 | LARRY | WALSH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901025 | M6281 | Muscle weakness (generalized) | ICD10 | 09052017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08302017 | 2017-08-30T12:38:49+00:00 |  | 000053172-01 | RODNEY | DENUNE | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830067 | R079 | Chest pain, unspecified | ICD10 | 09052017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T11:25:23+00:00 |  | 000048555-01 | CHERYL | SHIVELY | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828070 | K613 | Ischiorectal abscess | ICD10 | 09052017 | 08252017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T09:24:55+00:00 |  | 000074211-01 | Charles | Coey | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829058 | J189, R0682, R0902 | Hypoxemia | ICD10 | 09052017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T10:09:18+00:00 |  | 000103540-01 | Robert | Vance | ALLIANCE PHYSICIANS INC | 917982 | STEPHEN R | FLEISCHER | 1134335805 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08312017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901036 | K4030 | Unil inguinal hernia, w obst, w/o gangr, not spcf as recur | ICD10 | 09052017 | 08312017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
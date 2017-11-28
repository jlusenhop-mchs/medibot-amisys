Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-24_thru_2017-11-26_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-24_thru_2017-11-26_OBS
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
| 11222017 | 2017-11-22T10:29:55+00:00 | 256946317326 | 000054040-01 | ROY | BRYANT | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122042 | R079 | Chest pain, unspecified | ICD10 | 11252017 | 11222017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T10:53:13+00:00 | 255129567325 | 000027130-01 | PAUL | LAPPERT | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122048 | R569 | Unspecified convulsions | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T11:23:03+00:00 | 260852017323 | 000026612-01 | NORMA | MILLER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11192017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120059 | R040 | Epistaxis | ICD10 | 11252017 | 11192017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11212017 | 2017-11-21T11:01:20+00:00 | 169129087325 | 000080944-01 | David | Pearson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121049 | R079 | Chest pain, unspecified | ICD10 | 11252017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11252017 | 2017-11-25T10:44:34+00:00 | 025775299-7327 | 000017997-01 | LARRY | WALSH | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11222017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125001 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 11252017 | 11222017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T10:20:45+00:00 | 250936247325 | 000096375-01 | Candy | Rafferty | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122040 | J189 | Pneumonia, unspecified organism | ICD10 | 11252017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T09:49:48+00:00 | 261200397325 | 000000668-01 | CARL | BOZEMAN | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122030 | R079 | Chest pain, unspecified | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11252017 | 2017-11-25T11:16:31+00:00 | 026646137-7323 | 000050437-01 | CAROL | FORTNEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11192017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125002 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 11252017 | 11192017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11222017 | 2017-11-22T08:16:51+00:00 | 251417197325 | 000066935-01 | MELENIE | BARCLAY | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11212017 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122003 | M7080 | Oth soft tissue disord related to use/pressure of unsp site | ICD10 | 11252017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11252017 | 2017-11-25T11:24:39+00:00 | 018036327-7327 | 000079604-01 | Patricia | Gram | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11232017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125003 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 11252017 | 11232017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T09:46:20+00:00 | 2524902967325 | 000024168-01 | WANDA | WHITE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122027 | L03818 | Cellulitis of other sites | ICD10 | 11252017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11252017 | 2017-11-25T11:34:07+00:00 | 025051414-7326 | 000014015-01 | BRIAN | HEMBREE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11222017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125004 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 11252017 | 11222017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T09:38:48+00:00 | 180342637325 | 000111675-01 | Donna | Shaffer | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Southeast OH Essential Care | Reports | Observation | Inpatient | 11212017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122023 | D589 | Hereditary hemolytic anemia, unspecified | ICD10 | 11252017 | 11212017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T10:10:05+00:00 | 258186387325 | 000106426-01 | Kenneth | Little | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122038 | R079, R109 | Unspecified abdominal pain | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T10:42:57+00:00 | 251230947324 | 000046851-01 | CHARLENE | WHALEY | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121045 | R079 | Chest pain, unspecified | ICD10 | 11252017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11212017 | 2017-11-21T10:46:03+00:00 | 254874007324 | 000033307-01 | GARY | WOLFE | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121047 | R109 | Unspecified abdominal pain | ICD10 | 11252017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T11:46:02+00:00 |  | 000103727-01 | Sarah | Sieber | MOUNT CARMEL HLTH SYS | 948188 | ROBERT F | BATTISTI | 1346501319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11232017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125005 | L03116 | Cellulitis of left lower limb | ICD10 | 11252017 | 11232017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T09:26:32+00:00 | 254693477320 | 000028856-01 | PATRICIA | CHESTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11162017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117010 | E860, K921, R197 | Diarrhea, unspecified | ICD10 | 11252017 | 11162017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11222017 | 2017-11-22T09:22:03+00:00 | 252132967325 | 000114828-01 | Wendy | Nelson | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122016 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T09:53:10+00:00 | 251756847325 | 000015176-01 | RALPH | HOFFMAN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122033 | R55 | Syncope and collapse | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T10:03:13+00:00 | 252931267325 | 000011135-01 | SALLIE | JORDAN | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122036 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11232017 | 2017-11-23T06:52:36+00:00 |  | 000104757-01 | James | Ott | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11222017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123002 | I4891 | Unspecified atrial fibrillation | ICD10 | 11252017 | 11222017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11212017 | 2017-11-21T09:49:10+00:00 | 250899207325 | 000116915-01 | Jerry | Paynter | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121035 | I4891 | Unspecified atrial fibrillation | ICD10 | 11252017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11232017 | 2017-11-23T06:57:18+00:00 |  | 000066192-01 | DELORES | RUMER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123003 | G9340 | Encephalopathy, unspecified | ICD10 | 11252017 | 11222017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11212017 | 2017-11-21T10:34:58+00:00 | 177921327325 | 000079823-01 | Sherrie | Upp | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11212017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121042 | R079 | Chest pain, unspecified | ICD10 | 11252017 | 11212017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T10:37:38+00:00 | 176445127324 | 000052306-01 | JOHN | WESTLAKE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121044 | R55 | Syncope and collapse | ICD10 | 11252017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T10:10:39+00:00 | 262263917324 | 000065564-01 | PHYLLIS | THOMPSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121034 | I959 | Hypotension, unspecified | ICD10 | 11252017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T16:26:18+00:00 |  | 000024930-01 | MARY | WALSH | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125007 | S7221XA | Displaced subtrochanteric fracture of right femur, init | ICD10 | 11252017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11252017 | 2017-11-25T16:34:58+00:00 |  | 000097505-01 | Robert | Haslett | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125008 | D649 | Anemia, unspecified | ICD10 | 11252017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11222017 | 2017-11-22T09:19:26+00:00 | 180347047326 | 000009402-01 | Jack | Hayner | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122015 | R55 | Syncope and collapse | ICD10 | 11252017 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11232017 | 2017-11-23T07:21:28+00:00 |  | 000030904-01 | LINDA | TUSSEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123004 | R51 | Headache | ICD10 | 11262017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11242017 | 2017-11-24T20:45:17+00:00 |  | 000004550-01 | DELPHINE | BROBST | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11232017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125016 | L03114 | Cellulitis of left upper limb | ICD10 | 11262017 | 11232017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11232017 | 2017-11-23T07:31:38+00:00 |  | 000001539-01 | GRACE | GILL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123006 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 11262017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T08:53:41+00:00 |  | 000046226-01 | DEBRA | DRUMM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11202017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121017 | R079 | Chest pain, unspecified | ICD10 | 11262017 | 11202017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11232017 | 2017-11-23T15:03:51+00:00 |  | 000093176-01 | Virginia | Mullins | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126007 | I4891 | Unspecified atrial fibrillation | ICD10 | 11262017 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T15:31:38+00:00 |  | 000088592-01 | Rayford | Harper | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126009 | R55 | Syncope and collapse | ICD10 | 11262017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11252017 | 2017-11-25T15:40:31+00:00 |  | 000000726-01 | GLORIA | FITZPATRICK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126010 | N390 | Urinary tract infection, site not specified | ICD10 | 11262017 | 11242017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11262017 | 2017-11-26T16:07:47+00:00 |  | 000072866-01 | Terry | Steinmetz | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11252017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126012 | R079 | Chest pain, unspecified | ICD10 | 11262017 | 11252017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11262017 | 2017-11-26T16:17:24+00:00 |  | 000051549-01 | Gilbert | Albright | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11252017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126013 | K920 | Hematemesis | ICD10 | 11262017 | 11252017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11252017 | 2017-11-25T20:25:27+00:00 |  | 000041306-01 | ANITA | KOEBEL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125013 | J209 | Acute bronchitis, unspecified | ICD10 | 11262017 | 11242017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11262017 | 2017-11-26T06:27:04+00:00 |  | 000013894-01 | ELIZABETH | MILLER | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126002 | S32008A | Oth fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 11262017 | 11262017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11232017 | 2017-11-23T18:19:43+00:00 |  | 000044424-01 | RAETTA | BATES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126018 | R109 | Unspecified abdominal pain | ICD10 | 11262017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11232017 | 2017-11-23T18:29:15+00:00 |  | 000111490-01 | VINCENT | LOMBARD | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126019 | L0390 | Cellulitis, unspecified | ICD10 | 11262017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |

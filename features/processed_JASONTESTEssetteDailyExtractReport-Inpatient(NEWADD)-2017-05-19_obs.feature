Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-19_OBS
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image

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
| 02062017 | 2017-02-06T13:09:18+00:00 |  | 000086252-01 | Rodger | Martin | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052017 | 02072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170418096279.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209031 | A419, J189, R4182 | Altered mental status, unspecified | ICD10 | 05192017 | 02052017 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02102017 | 2017-02-10T16:17:13+00:00 |  | 000076079-01 | Janet | Wedmore | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 05192017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02222017 | 02232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213002 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 05192017 | 02222017 | 02232017 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04202017 | 2017-04-20T16:19:05+00:00 |  | 000111702-01 | Linda | Bowen | UNIVERSITY OF CINCINNATI | 933053 | JOHN D | WYRICK | 1972553774 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Observation | OBSV | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420106 | S82101K, S82831K | Oth fx upr and low end r fibula, subs for clos fx w nonunion | ICD10 | 05192017 | 05152017 | 05172017 | 27720, 20696, 38220 | BONE MARROW ASPIRATION | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05032017 | 2017-05-03T10:40:40+00:00 |  | 000031517-01 | JEANETTE | HAYNES | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503065 | N812 | Incomplete uterovaginal prolapse | ICD10 | 05202017 | 05192017 | 05202017 | 57425, 57270, 57288, 52000 | CYSTOURETHOSCOPY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05052017 | 2017-05-05T13:57:40+00:00 |  | 000084505-01 | Maryellen | Mays | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05042017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509035 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05192017 | 05042017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112017 | 2017-05-11T14:28:20+00:00 |  | 000114215-01 | Don | Copley | MED ASSOCS OF CAMBRIDGE | 922026 | MARK | GOGGIN | 1518962612 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05192017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05112017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512003 | A419 | Sepsis, unspecified organism | ICD10 | 05192017 | 05112017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T07:35:37+00:00 |  | 000116759-01 | Judith A | Reed | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05192017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05112017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512035 | R55 | Syncope and collapse | ICD10 | 05192017 | 05112017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05132017 | 2017-05-13T18:20:15+00:00 |  | 000044070-01 | PAUL | WRIGHT | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05132017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515001 | J189 | Pneumonia, unspecified organism | ICD10 | 05192017 | 05132017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T11:04:57+00:00 | 017825978-7135 | 000104432-01 | ROBERT | BISHARD | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515060 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 05192017 | 05172017 | 05182017 | 37215 | TRANSCATH STENT, CCA W/EPS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05152017 | 2017-05-15T15:11:39+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05122017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515114 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 05192017 | 05122017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05162017 | 2017-05-16T11:16:25+00:00 | 025634718-7135 | 000042078-01 | DEAN | OYER | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05152017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516034 | R300 | Dysuria | ICD10 | 05192017 | 05152017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05162017 | 2017-05-16T13:52:41+00:00 |  | 000085969-01 | Brynton | Gibson | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Observation | Inpatient | 05152017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516083 | R0602 | Shortness of breath | ICD10 | 05192017 | 05152017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T15:01:51+00:00 |  | 000113712-01 | Cartis | Profitt | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516099 | J441, R0602 | Shortness of breath | ICD10 | 05192017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T10:00:03+00:00 | 025053838-7136 | 000039253-01 | KENNETH | HARRIS | COPC CENTRAL OHIO PRIMAR | 935008 | DAVID M | WALKER | 1326028770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05192017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517017 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T10:38:20+00:00 |  | 000085546-01 | Helena | Anthony | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517028 | J189 | Pneumonia, unspecified organism | ICD10 | 05192017 | 05172017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T13:49:26+00:00 |  | 000000180-01 | BETTY JO | DEAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517048 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05192017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T13:55:26+00:00 |  | 000031443-01 | JOHN | LEROY | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517052 | M6281 | Muscle weakness (generalized) | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T13:55:11+00:00 |  | 000113269-01 | Pamela | Upper | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517058 | R079 | Chest pain, unspecified | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T14:36:10+00:00 |  | 000101145-01 | Virginia | Sachs | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 05192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517068 | R0600, R0689 | Other abnormalities of breathing | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T15:23:11+00:00 |  | 000045666-01 | JAMES | DULMAGE | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517071 | I482, L03119 | Cellulitis of unspecified part of limb | ICD10 | 05192017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T15:27:18+00:00 |  | 000028486-01 | DOROTHY | KOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517076 | R627 | Adult failure to thrive | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T14:53:13+00:00 |  | 000073066-01 | Michael | Shannon | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517078 | C3490, R260 | Ataxic gait | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05172017 | 2017-05-17T15:32:24+00:00 |  | 000045546-01 | NOLA | MURRAY | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517082 | L03818 | Cellulitis of other sites | ICD10 | 05192017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T15:30:02+00:00 |  | 000044497-01 | Betsy | Speelman | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517085 | R4781 | Slurred speech | ICD10 | 05192017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T15:31:15+00:00 |  | 000117559-01 | Patricia | Self | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517087 | R0602 | Shortness of breath | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T06:41:01+00:00 |  | 000109569-01 | Willa | Glaskin | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05162017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518006 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05192017 | 05162017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T08:38:46+00:00 |  | 000013124-01 | BILLY | DECKER | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518011 | K5660 | Unspecified intestinal obstruction | ICD10 | 05202017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T08:42:57+00:00 |  | 000057695-01 | CAROL | GREEN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518013 | R079 | Chest pain, unspecified | ICD10 | 05192017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T09:41:13+00:00 |  | 000029549-01 | GEORGE | HOFFMAN | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518020 | R42 | Dizziness and giddiness | ICD10 | 05192017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T15:05:26+00:00 |  | 000106016-01 | Michelle | Damon | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518056 | M84373S | Stress fracture, unspecified ankle, sequela | ICD10 | 05192017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05182017 | 2017-05-18T15:06:52+00:00 |  | 000098547-01 | Kash | Adams Jr | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518071 | I200, R079 | Chest pain, unspecified | ICD10 | 05192017 | 05172017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05192017 | 2017-05-19T08:59:00+00:00 |  | 000010217-01 | MARY | BROWER | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519002 | E873, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05192017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05192017 | 2017-05-19T09:34:20+00:00 |  | 000070150-01 | Mildred | Whaley | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05172017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519019 | D649 | Anemia, unspecified | ICD10 | 05192017 | 05172017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T11:03:36+00:00 |  | 000102688-01 | Debbie | Bauser | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05182017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519032 | R6889 | Other general symptoms and signs | ICD10 | 05192017 | 05182017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05192017 | 2017-05-19T12:13:44+00:00 |  | 000070292-01 | William | Dennison | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519047 | M4802 | Spinal stenosis, cervical region | ICD10 | 05192017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05202017 | 2017-05-20T16:42:44+00:00 |  | 000088229-01 | Janet | Richards | HMP OF OHIO PC | 923027 | NAMRATHA R | MAPAKSHI | 1972738235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170520001 | K208 | Other esophagitis | ICD10 | 05202017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
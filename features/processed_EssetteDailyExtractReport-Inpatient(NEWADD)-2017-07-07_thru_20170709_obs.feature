Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-07_thru_20170709_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-07_thru_20170709_OBS
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
| 05252017 | 2017-05-25T10:51:26+00:00 |  | 000093401-01 | Mary | Northrup | ALLIANCE PHYSICIANS INC | 948435 | KAMAL | WOODS | 1871706473 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525035 | M4712 | Other spondylosis with myelopathy, cervical region | ICD10 | 07072017 | 07052017 | 07062017 | 22856, 22858 | SECOND LEVEL CER DISKECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06142017 | 2017-06-14T10:27:54+00:00 |  | 000075475-01 | Joseph | Dillard | ORTHO ASSOC OF DAYTON | 913137 | LANCE M | TIGYER | 1558320408 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 07072017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 06212017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614036 | M4806, M5116 | Intervertebral disc disorders w radiculopathy, lumbar region | ICD10 | 07072017 | 06212017 | 06232017 | 22612, 22840, 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06212017 | 2017-06-21T13:19:49+00:00 |  | 000066147-01 | THOMAS | HEWITT | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621057 | I498 | Other specified cardiac arrhythmias | ICD10 | 07072017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T12:57:52+00:00 |  | 000104453-01 | LEO | PAIGE | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Post-Service | POST |  | ADENA REGIONAL MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06242017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170626132 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07072017 | 06242017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T09:06:08+00:00 |  | 000107115-01 | Carolyn | Wonka | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627056 | M25552 | Pain in left hip | ICD10 | 07072017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06292017 | 2017-06-29T08:59:28+00:00 |  | 000089390-01 | Michael | Workman | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629027 | I959 | Hypotension, unspecified | ICD10 | 07072017 | 06292017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T08:45:48+00:00 |  | 000103353-01 | Nancy | Van Hoose | APOGEE MED GRP OHIO INC | 947863 | SARAH | KHAN | 1336481670 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629033 | R627 | Adult failure to thrive | ICD10 | 07072017 | 06282017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T10:13:14+00:00 | 267552657183 | 000076779-01 | Richard | Wright | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703029 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 07072017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T10:57:34+00:00 | 252296667183 | 000049528-01 | HARRY | SEBRING JR | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07022017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703059 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 07022017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T11:27:42+00:00 | 250844777185 | 000000839-01 | STARLING | NEWLAND | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07022017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703067 | M4854XA | Collapsed vertebra, NEC, thoracic region, init | ICD10 | 07072017 | 07022017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T07:36:54+00:00 |  | 000104268-01 | JUDY | SHORT | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07072017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703068 | R001, R42, R55 | Syncope and collapse | ICD10 | 07072017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T11:40:35+00:00 | 260438917184 | 000105835-01 | Nancy | Pugh | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07022017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703075 | M6281 | Muscle weakness (generalized) | ICD10 | 07072017 | 07022017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T08:45:37+00:00 |  | 000054263-01 | LUROSE | RHOADS | LICKING MEM INPATIENT ME | 919278 | FOLARIN K | SOGBETUN | 1356536882 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 07022017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703096 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07072017 | 07022017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T08:46:36+00:00 |  | 000070176-01 | Sue | Collins | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07022017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703097 | E860, M6281 | Muscle weakness (generalized) | ICD10 | 07072017 | 07022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T12:17:52+00:00 |  | 000107157-01 | Donald | Moreland | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07012017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703123 | K859 | Acute pancreatitis, unspecified | ICD10 | 07072017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T13:59:39+00:00 |  | 000087126-01 | Paula | Kalaman | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703127 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07072017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T17:05:49+00:00 |  | 000035493-01 | KAY | MINER | APOGEE MED GRP OHIO INC | 949153 | TINA L | HARRIS | 1093191298 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07022017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705012 | R5382, R7889 | Finding of oth substances, not normally found in blood | ICD10 | 07072017 | 07022017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:52:39+00:00 | 253848137184 | 000074923-01 | Jane | Ryan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705031 | N179 | Acute kidney failure, unspecified | ICD10 | 07072017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T11:07:52+00:00 | 251209807185 | 000096965-01 | Duane | Wegner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07042017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705039 | J811 | Chronic pulmonary edema | ICD10 | 07072017 | 07042017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T11:29:43+00:00 | 252052497186 | 000110724-01 | Linda | Milburn | HMP OF OHIO PC | 942985 | BINAYA R | DAHAL | 1093067761 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705046 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07072017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T11:32:25+00:00 | 252046547184 | 000104018-01 | Lorraine | Mitchell | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07072017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705047 | D649 | Anemia, unspecified | ICD10 | 07072017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T11:38:50+00:00 | 251667837185 | 000002733-01 | DOREEN | FLOWERS | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07042017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705050 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 07072017 | 07042017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T12:41:43+00:00 | 026045755-7184 | 000008235-01 | STEVE | RITO | MOUNT CARMEL HLTH PRVDRS | 937148 | JACK L | MATHEWS | 1285676239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07032017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705057 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07072017 | 07032017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T13:18:09+00:00 | 252059957186 | 000056447-01 | ABE | MILLER | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07042017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705067 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 07072017 | 07042017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T14:42:47+00:00 |  | 000034547-01 | BETTY | JEFFERS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06292017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705087 | D649, I959, N186 | End stage renal disease | ICD10 | 07072017 | 06292017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07062017 | 2017-07-06T09:11:42+00:00 | 254417947186 | 000094011-01 | Darlene | Edwards | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706008 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T09:42:28+00:00 | 264244567186 | 000033415-01 | OLA | MOORE | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706015 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T14:09:12+00:00 |  | 000090368-01 | JUDITH | SPIRES | EASTERN HILLS INTL MED I | 921533 | DAVID G | WILSON | 1750394730 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07072017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07042017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706017 | I214, I509, N179 | Acute kidney failure, unspecified | ICD10 | 07072017 | 07042017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T09:50:49+00:00 | 255545337186 | 000077375-01 | Lorane | Quinn | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07052017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706020 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 07072017 | 07052017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T10:20:18+00:00 | 251742507187 | 000110354-01 | MARGARET | GREEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706030 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T15:01:25+00:00 |  | 000090979-01 | William | Turner | ARTHUR H WIN MD LLC | 905083 | ARTHUR H | WIN | 1780667444 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706046 | J441, R0600, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 07072017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T09:57:47+00:00 | 025667246-7186 | 000081615-01 | Maryann | Westfall | CEN OH PRIMARY CARE SPEC | 928236 | FATIMA D | TSALIKOVA | 1659586360 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707021 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 07072017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07072017 | 2017-07-07T09:16:45+00:00 |  | 000084527-01 | Ida | Barrett | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07072017 | Approved | MediGold Southeast OH Essential Care | Fax | Pending Admission | Inpatient | 07062017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707029 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 07062017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07072017 | 2017-07-07T12:37:40+00:00 |  | 000074073-01 | Charles | Warren | GENESIS MEDICAL GRP LLC | 921908 | BENJAMIN R | GIBSON | 1619257508 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07072017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07062017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707047 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 07072017 | 07062017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |

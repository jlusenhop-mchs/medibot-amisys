Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-20_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-20_OBS
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
| 06292017 | 2017-06-29T07:38:53+00:00 |  | 000115936-01 | James | Cushman | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629008 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 07202017 | 07182017 | 07192017 | 34804 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07092017 | 2017-07-09T19:46:27+00:00 |  | 000059599-01 | CONNIE | HINTON | COMMUNITY HSPIST LLC | 932737 | ISTEAQ | AHMED | 1245525765 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07082017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710007 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07202017 | 07082017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T13:31:39+00:00 |  | 000105300-01 | Sarah | Stacy | S DAYTON ACUTE CARE CNSL | 919952 | RUSSELL S | HARVEY | 1285883934 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07092017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711006 | C3492, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07202017 | 07092017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T13:57:30+00:00 |  | 000086191-01 | Elizabeth | Briggs | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712077 | M25519, M25569 | Pain in unspecified knee | ICD10 | 07202017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T10:26:09+00:00 |  | 000092672-01 | Tina | Brown | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07122017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713054 | C786, C801, E876, J189 | Pneumonia, unspecified organism | ICD10 | 07202017 | 07122017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T16:27:16+00:00 |  | 000116355-01 | Russell | Clark | SOMC MED CARE FOUNDATION | 912075 | MARION | HOCHSTETLER | 1336346808 | SOUTHERN OH MEDICAL CTR | 936402 | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07142017 | 07152017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713074 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 07202017 | 07142017 | 07152017 | 34802 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07142017 | 2017-07-14T08:53:29+00:00 |  | 000070176-01 | Sue | Collins | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714043 | R000 | Tachycardia, unspecified | ICD10 | 07202017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07142017 | 2017-07-14T10:22:23+00:00 |  | 000117919-01 | Phady | Phaosihavong | ADENA MEDICAL GROUP LLC | 924263 | AUSTIN G | AL-KAZAZ | 1679803290 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714047 | R531 | Weakness | ICD10 | 07202017 | 07142017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T10:52:41+00:00 | 17825954 | 000043253-01 | GEORGE | DRAKE | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717020 | I509, R748 | Abnormal levels of other serum enzymes | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T11:54:59+00:00 | 25418051 | 000022371-01 | MARY | JENKINS | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717037 | N390 | Urinary tract infection, site not specified | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T13:04:43+00:00 | 252279687196 | 000087657-01 | Thelma | Schuh | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07152017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717055 | R1310 | Dysphagia, unspecified | ICD10 | 07202017 | 07152017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07172017 | 2017-07-17T13:29:59+00:00 | 262697827195 | 000003892-01 | EVELYN | BEAL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717066 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 07202017 | 07142017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07172017 | 2017-07-17T13:43:34+00:00 | 250517767198 | 000094771-01 | Mark | Honeycutt | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717072 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T07:25:05+00:00 |  | 000115943-01 | Mary | Winegardner | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07132017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717077 | E871, R4182 | Altered mental status, unspecified | ICD10 | 07202017 | 07132017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07152017 | 2017-07-15T16:08:42+00:00 |  | 000079976-01 | Beverly | Mayhugh | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717095 | K7290, R188 | Other ascites | ICD10 | 07202017 | 07142017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T16:20:08+00:00 |  | 000053160-01 | ALLEEN | CARMACK | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717118 | I4891 | Unspecified atrial fibrillation | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T08:19:46+00:00 |  | 000104043-01 | MARGARET | WILLIAMS | THE JEWISH HOSPITAL | 916862 |  | THE JEWISH HOSPITAL | 1336478163 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718005 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07202017 | 07162017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T08:39:52+00:00 |  | 000037113-01 | Irene | Marcum | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718016 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07182017 | 2017-07-18T10:02:02+00:00 | 250145577199 | 000044240-01 | SARA | MYERS | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07172017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718043 | R55 | Syncope and collapse | ICD10 | 07202017 | 07172017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07152017 | 2017-07-15T17:04:12+00:00 |  | 000117400-01 | Patricia | Hutchinson | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07142017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718045 | I639, J9601, M5412, R4182 | Altered mental status, unspecified | ICD10 | 07202017 | 07142017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T10:12:16+00:00 |  | 000046979-01 | ANNA | METZGER | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718047 | I43, I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07202017 | 07142017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07162017 | 2017-07-16T14:58:31+00:00 |  | 000078792-01 | Hazel | Morehouse | HOLZER CLINIC | 927680 | ROBERT A | HOLM | 1689638041 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07152017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718052 | I509, N289, R079 | Chest pain, unspecified | ICD10 | 07202017 | 07152017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T12:24:41+00:00 |  | 000060281-01 | LOUISE | STINE | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718063 | N390 | Urinary tract infection, site not specified | ICD10 | 07202017 | 07142017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T15:30:56+00:00 |  | 000041560-01 | Roy | Lacy Jr | SOUND INPATIENT PHYS OF | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718068 | M6282 | Rhabdomyolysis | ICD10 | 07202017 | 07162017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T15:50:49+00:00 |  | 000041836-01 | MARY | KLODA | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07142017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718069 | I10, I214, M6281 | Muscle weakness (generalized) | ICD10 | 07202017 | 07142017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T15:51:59+00:00 |  | 000101517-01 | David | Hardy | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07152017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718070 | I959, R6511 | SIRS of non-infectious origin w acute organ dysfunction | ICD10 | 07202017 | 07152017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T16:13:25+00:00 |  | 000060191-01 | EARL | WHITE | S DAYTON ACUTE CARE CNSL | 947904 | E EUN A | JANG | 1659613149 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718073 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 07202017 | 07162017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T16:25:24+00:00 |  | 000044222-01 | JOHN | MEEKER | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718077 | R109 | Unspecified abdominal pain | ICD10 | 07202017 | 07162017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T16:26:34+00:00 |  | 000077205-01 | Sondra | Hall | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07132017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718080 | R109, R55 | Syncope and collapse | ICD10 | 07202017 | 07132017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T07:06:05+00:00 |  | 000063253-01 | DARRELL | KEENER | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718082 | J9801, R0902, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07202017 | 07162017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T09:56:21+00:00 | 256532247199 | 000110037-01 | Tamara | Mills | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719023 | R42 | Dizziness and giddiness | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:08:19+00:00 |  | 000060448-01 | LENORA | WILLIAMS | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719024 | R0609, R0789, R9439 | Abnormal result of other cardiovascular function study | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:18:10+00:00 | 250873577200 | 000092816-01 | ELAINE | PICKRELL | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719027 | R079 | Chest pain, unspecified | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:22:48+00:00 |  | 000106523-01 | June | Morey | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719029 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:32:28+00:00 |  | 000053146-01 | JEAN | KIMBLE | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719064 | S301XXA | Contusion of abdominal wall, initial encounter | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T14:42:51+00:00 |  | 000113463-01 | Darlene | Trent | APOGEE MED GRP OHIO INC | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719080 | R079 | Chest pain, unspecified | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T14:51:49+00:00 |  | 000096205-01 | Roger | Dixon | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719081 | R110 | Nausea | ICD10 | 07202017 | 07182017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T14:19:14+00:00 |  | 000044270-01 | DANIEL | ANDREWS | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07192017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720082 | R6889 | Other general symptoms and signs | ICD10 | 07202017 | 07192017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-26_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-26_OBS
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
| 04152018 | 2018-04-15T14:15:46+00:00 |  | 000052838-01 | BETTY | LUPHER | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04152018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416051 | J340 | Abscess, furuncle and carbuncle of nose | ICD10 | 04262018 | 04152018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04152018 | 2018-04-15T08:45:34+00:00 |  | 000100369-01 | Ana | Alvares | KHN IP MED | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04132018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416050 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 04262018 | 04132018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T12:26:31+00:00 |  | 000114959-01 | Linda | Noes | HOSPITALIST MEDICINE PHY | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04162018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417100 | D72829, K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 04262018 | 04162018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04202018 | 2018-04-20T10:19:41+00:00 |  | 000048763-01 | BARBARA | DAVIS | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420020 | D649 | Anemia, unspecified | ICD10 | 04262018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T09:19:44+00:00 |  | 000055769-01 | NANCY | MYERS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425009 | E8342, R0602 | Shortness of breath | ICD10 | 04262018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04052018 | 2018-04-05T11:13:49+00:00 |  | 000078758-01 | Eloise | Beers | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405034 | I509 | Heart failure, unspecified | ICD10 | 04262018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T16:19:52+00:00 |  | 000120036-01 | Pamela | Dunlap | MOUNT CARMEL HLTH PRVDRS | 914527 | RICHARD S | BROWN JR | 1679538177 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04052018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409096 | K37 | Unspecified appendicitis | ICD10 | 04262018 | 04052018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T09:45:16+00:00 |  | 000098748-01 | Rita | Shonkwiler | ADENA MEDICAL GROUP LLC | 906142 | RICHARD D | MIZER | 1811977788 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410079 | J45909 | Unspecified asthma, uncomplicated | ICD10 | 04262018 | 04092018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04112018 | 2018-04-11T09:21:53+00:00 |  | 000092457-01 | Norma | Bowman | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04102018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411057 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04102018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T11:44:47+00:00 |  | 000072385-01 | Loree | Kellough | HOSPITALIST MEDICINE PHY | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04122018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413046 | K838 | Other specified diseases of biliary tract | ICD10 | 04262018 | 04122018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T11:55:02+00:00 |  | 000089077-01 | Mary | Peele | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416093 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T11:55:47+00:00 |  | 000009965-01 | NANCY | RILEY | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417090 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T12:08:15+00:00 |  | 000046182-01 | TED | ARLEDGE | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417094 | I4891 | Unspecified atrial fibrillation | ICD10 | 04262018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T12:20:41+00:00 |  | 000038096-01 | JOHN | MCGRAW | LICKING MEM HLTH PROF | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417097 | R0602 | Shortness of breath | ICD10 | 04262018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T10:30:36+00:00 |  | 000060710-01 | HILDA | MYERS | SOUND INPATIENT PHYS OF | 905439 | JASMINE | VARMA | 1821136284 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418032 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04172018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04212018 | 2018-04-21T18:10:15+00:00 |  | 000046811-01 | KAREN | KARST | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04212018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423029 | R1310 | Dysphagia, unspecified | ICD10 | 04262018 | 04212018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T10:49:06+00:00 |  | 000094913-01 | Kathy | Schmidt | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424026 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04262018 | 04202018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T09:52:45+00:00 |  | 000050409-01 | JACK | FEIL | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425015 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T09:49:16+00:00 |  | 000111981-01 | Patricia | Mcpeek | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426010 | E876 | Hypokalemia | ICD10 | 04262018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04112018 | 2018-04-11T11:00:06+00:00 |  | 000067847-01 | ANDREA | LOGAN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04082018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411030 | R0600 | Dyspnea, unspecified | ICD10 | 04262018 | 04082018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T13:52:53+00:00 |  | 000040678-01 | REGINA | TURNER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04112018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413050 | K922, R0602, R079 | Chest pain, unspecified | ICD10 | 04262018 | 04112018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T08:03:16+00:00 |  | 000029948-01 | MICHAEL | FOSTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04122018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417003 | R4182 | Altered mental status, unspecified | ICD10 | 04262018 | 04122018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T15:50:22+00:00 |  | 000059419-01 | Marilynne | Mitchell | SOUND INPATIENT PHYS OF | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04132018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417025 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 04262018 | 04132018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04182018 | 2018-04-18T10:58:08+00:00 |  | 000070218-01 | Leo | Rhodes | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04172018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418040 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04172018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04192018 | 2018-04-19T14:24:31+00:00 |  | 000090682-01 | Larry | Morgan | TRIHEALTH G LLC | 925438 | JAMES M | WEEKS | 1932438280 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419065 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04262018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T11:19:12+00:00 |  | 000083960-01 | Gloria | Wolfe | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420039 | A419 | Sepsis, unspecified organism | ICD10 | 04262018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T11:24:17+00:00 |  | 000064930-01 | CRAIG | DENNIS | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 04192018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420054 | R55 | Syncope and collapse | ICD10 | 04262018 | 04192018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04202018 | 2018-04-20T14:52:39+00:00 |  | 000098070-01 | Gwendolyn | Nester | HOSPITALIST MEDICINE PHY | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423017 | E860, I4891, N390, R197 | Diarrhea, unspecified | ICD10 | 04262018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T07:11:10+00:00 |  | 000085979-01 | Kenneth | Hopper | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04202018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423056 | I959, R55, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 04262018 | 04202018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04232018 | 2018-04-23T15:44:16+00:00 |  | 000095259-01 | Patricia | Darst | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424018 | G459, R4701 | Aphasia | ICD10 | 04262018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T15:31:54+00:00 |  | 000051359-01 | LINDA | KILBARGER | HOSPITALIST MEDICINE PHY | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424021 | N390, R4182 | Altered mental status, unspecified | ICD10 | 04262018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T11:03:13+00:00 |  | 000112247-01 | Barbara | Reilly | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04222018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424033 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 04262018 | 04222018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T11:42:58+00:00 |  | 000121453-01 | HARRY | HEAGREN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424046 | N179 | Acute kidney failure, unspecified | ICD10 | 04262018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T07:26:55+00:00 |  | 000088236-01 | Patricia | Rockfield | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424047 | N179, N261 | Atrophy of kidney (terminal) | ICD10 | 04262018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T08:30:44+00:00 |  | 000119580-01 | Elaine | Quinn | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424051 | I10, J8410, R0600, R0902 | Hypoxemia | ICD10 | 04262018 | 04232018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T10:34:28+00:00 |  | 000094602-01 | Linda | Collison | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424061 | R001, R55 | Syncope and collapse | ICD10 | 04262018 | 04222018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T12:11:20+00:00 |  | 000066468-01 | BARBARA | COLES | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424082 | R030, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 04262018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T07:36:16+00:00 |  | 000062351-01 | JOYCE | RANDOLPH | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425032 | I4891 | Unspecified atrial fibrillation | ICD10 | 04262018 | 04242018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T12:55:29+00:00 |  | 000111841-01 | Gary | Jackson | THE CHRIST HSP CARDIOVAS | 926124 | GEORGE S | GEORGE | 1730391905 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425056 | R079 | Chest pain, unspecified | ICD10 | 04262018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T10:52:13+00:00 |  | 000065330-01 | DONNA | HALL | HOSPITAL MEDICINE SERVIC | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426030 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04262018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
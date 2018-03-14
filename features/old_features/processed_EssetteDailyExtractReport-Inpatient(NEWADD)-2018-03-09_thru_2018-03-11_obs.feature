Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-09_thru_2018-03-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-09_thru_2018-03-11_OBS
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
| 02072018 | 2018-02-07T15:21:41+00:00 |  | 000105318-01 | Kathryn | Briggs | COSHOCTON COUNTY MEM HSP | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208020 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 03092018 | 02072018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:16:09+00:00 |  | 000101292-01 | Carroll | Wyman | ALLIANCE PHYSICIANS INC | 903443 | SAFWAT K | ZAKI | 1891876470 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208039 | Z9079 | Acquired absence of other genital organ(s) | ICD10 | 03092018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T09:03:35+00:00 |  | 000120905-01 | Bruce | Blain | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02112018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212107 | G3183 | Dementia with Lewy bodies | ICD10 | 03092018 | 02112018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02142018 | 2018-02-14T13:38:34+00:00 |  | 000071158-01 | Kenneth | Butler | KNOX COMMUNITY HOSPITAL | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02132018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214045 | R55 | Syncope and collapse | ICD10 | 03092018 | 02132018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T08:25:51+00:00 |  | 000014547-01 | FLORENCE | WEST | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222055 | S82491A | Oth fracture of shaft of right fibula, init for clos fx | ICD10 | 03092018 | 02212018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T14:40:33+00:00 |  | 000104906-01 | JUDY | MCCRAY | KHN IP MED | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213010 | R202 | Paresthesia of skin | ICD10 | 03092018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02162018 | 2018-02-16T07:58:48+00:00 |  | 000105091-01 | Linda | Burchett | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216009 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 03092018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:14:12+00:00 |  | 000084166-01 | James | Marcum | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 03092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221058 | M19019 | Primary osteoarthritis, unspecified shoulder | ICD10 | 03092018 | 02282018 | 03022018 | 23472, 23335 | SHOULDER PROSTHESIS REMOVAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  | No child records to display. |  |
| 02262018 | 2018-02-26T17:12:50+00:00 |  | 000117352-01 | Brian | Moss | MOUNT CARMEL HEALTH SYST | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02252018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227008 | S2249XB | Multiple fractures of ribs, unsp side, init for opn fx | ICD10 | 03092018 | 02252018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T12:31:56+00:00 |  | 000099789-01 | Edna | Scott | APOGEE MED GRP OHIO INC | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02252018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227068 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03092018 | 02252018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03052018 | 2018-03-05T07:47:09+00:00 |  | 000084346-01 | Marilyn | Shook | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305054 | H539, L03115 | Cellulitis of right lower limb | ICD10 | 03092018 | 03042018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T10:08:40+00:00 |  | 000106025-01 | Johnny | Lacy | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03092018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03042018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305083 | E860, N179, N433, R748, W19XXXA | Unspecified fall, initial encounter | ICD10 | 03092018 | 03042018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T13:23:46+00:00 |  | 000106890-01 | James | McNeal Sr | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03112018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307064 | E876, I214, N179 | Acute kidney failure, unspecified | ICD10 | 03112018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T15:17:53+00:00 |  | 000097001-01 | Frances | Studer | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02282018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108136 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 03092018 | 02282018 | 03012018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02082018 | 2018-02-08T09:05:55+00:00 |  | 000107812-01 | Harold | Parrett | ADENA MEDICAL GROUP LLC | 910639 | SUNG H | YI | 1265642961 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Observation | OBSV | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208028 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 03092018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T09:16:25+00:00 |  | 000059595-01 | JANET | KLEY | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213077 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 03092018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T11:13:12+00:00 |  | 000093556-01 | Barbara | Fairchild | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214028 | R001 | Bradycardia, unspecified | ICD10 | 03092018 | 02132018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T08:57:15+00:00 |  | 000112885-01 | JOHN | GRAVES | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215006 | M12511 | Traumatic arthropathy, right shoulder | ICD10 | 03092018 | 03052018 | 03052018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 02152018 | 2018-02-15T12:13:17+00:00 |  | 000120134-01 | Pamela | Yanke | ORTHO ASSOC OF SW OH INC | 947759 | ANTONIO G | MANOCCHIO JR | 1376810044 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215045 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03092018 | 03052018 | 03062018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02272018 | 2018-02-27T16:13:27+00:00 |  | 000066653-01 | RICHARD | LIBERTORE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02232018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227094 | N189, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03092018 | 02232018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03022018 | 2018-03-02T08:16:35+00:00 |  | 000099347-01 | Flora | Brannan | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03012018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302009 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03092018 | 03012018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T07:42:41+00:00 |  | 000009126-01 | BETTY | HELSER | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03012018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305044 | I10 | Essential (primary) hypertension | ICD10 | 03092018 | 03012018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T13:15:19+00:00 |  | 000091057-01 | Joyce | Steinmetz | S DAYTON ACUTE CARE CNSL | 902637 | LYNDETTA R | SCHWARTZ | 1174505465 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305067 | R51, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 03092018 | 03042018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T07:48:16+00:00 |  | 000120715-01 | EGMONT | FRIEDRICH JR | FAIRFIELD HLTHCARE PROFS | 906492 | DERRICK L | REEDUS SR | 1194929463 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306054 | R109 | Unspecified abdominal pain | ICD10 | 03092018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T15:16:04+00:00 |  | 000050583-01 | PEGGY | MILLER | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306089 | I4891, J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 03092018 | 03052018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03072018 | 2018-03-07T09:34:10+00:00 |  | 000067018-01 | IRVING | BROMBERG | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307006 | K625 | Hemorrhage of anus and rectum | ICD10 | 03092018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T15:28:37+00:00 |  | 000084919-01 | Richard | Frank | VENICE REGIONAL MEDICAL CENTER | 901708 |  | VENICE REGIONAL MEDICAL CENTER | 1760427157 | VENICE REGIONAL MEDICAL CENTER | 901708 | 1760427157 | VENICE REGIONAL MEDICAL CENTER | 1760427157 | Observation | OBSV | Concurrent Review | CONC |  | VENICE REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308057 | R6889 | Other general symptoms and signs | ICD10 | 03092018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T10:28:39+00:00 |  | 000105171-01 | Vicky | Smith | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03082018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309021 | R6889 | Other general symptoms and signs | ICD10 | 03092018 | 03082018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T09:50:37+00:00 |  | 000051987-01 | PATRICIA | STREBER | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307036 | N390 | Urinary tract infection, site not specified | ICD10 | 03092018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T10:51:49+00:00 |  | 000100628-01 | Tina | Parks | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307047 | J189 | Pneumonia, unspecified organism | ICD10 | 03092018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T12:26:44+00:00 |  | 000014947-01 | HAROLD | WILLIAMS | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307063 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 03092018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T15:34:07+00:00 |  | 000069185-01 | JUDY | ANDREWS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307073 | R55 | Syncope and collapse | ICD10 | 03092018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T08:22:23+00:00 |  | 000093490-01 | Clarence | Kilbarger | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308014 | R1310 | Dysphagia, unspecified | ICD10 | 03092018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T09:50:59+00:00 |  | 000073118-01 | Clara | Hinerman | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308029 | D6489, R55 | Syncope and collapse | ICD10 | 03092018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:14:47+00:00 |  | 000013848-01 | MARGARET | KRAUSS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308033 | R55 | Syncope and collapse | ICD10 | 03092018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T15:05:40+00:00 |  | 000104571-01 | Charles | Hayes | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03092018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308053 | R0602 | Shortness of breath | ICD10 | 03092018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T11:52:07+00:00 |  | 000050583-01 | PEGGY | MILLER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309037 | J90, R0600 | Dyspnea, unspecified | ICD10 | 03092018 | 03052018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
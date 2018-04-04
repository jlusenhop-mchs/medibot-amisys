Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_OBS
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
| 04022018 | 2018-04-02T08:04:50+00:00 |  | 000100529-01 | Dolly | Allen | HOSPITAL MEDICINE SERVIC | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402041 | K922, N390 | Urinary tract infection, site not specified | ICD10 | 04032018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T12:35:57+00:00 |  | 000107556-01 | Patricia | Heckman | ALLIANCE PHYSICIANS INC | 926081 | ARLAN M | GUSTILO-ASHBY | 1285829101 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306076 | N8112, N819, N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 04032018 | 03202018 | 03222018 | 57283, 52000, 57240 | COLOPLASTY,ANTERIOR VAGINAL WALL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03152018 | 2018-03-15T15:25:39+00:00 |  | 000093224-01 | Mary | Adams | TRIHEALTH G LLC | 931521 | SATHYA | NAGESPARAN | 1144271313 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 04032018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315051 | R079 | Chest pain, unspecified | ICD10 | 04032018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03262018 | 2018-03-26T12:32:47+00:00 |  | 000100182-01 | BENNETT | WISE | MOUNT CARMEL HLTH PRVDRS | 903018 | KEVIN V | WARE | 1609817980 | MOUNT CARMEL WEST PSYCHI | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03252018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327021 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04032018 | 03252018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03272018 | 2018-03-27T17:42:08+00:00 |  | 000051579-01 | DON | DAY | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328074 | R410 | Disorientation, unspecified | ICD10 | 04032018 | 03262018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03292018 | 2018-03-29T09:08:40+00:00 |  | 000019730-01 | JAMES | CROWLEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329011 | R310 | Gross hematuria | ICD10 | 04032018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T09:22:57+00:00 |  | 000043238-01 | HOWARD | GALE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329015 | R05 | Cough | ICD10 | 04032018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T09:33:45+00:00 |  | 000030282-01 | SHIRLEY | BOBO | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330006 | G40909, R296 | Repeated falls | ICD10 | 04032018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T09:42:23+00:00 |  | 000033256-01 | REBECCA | MOSIER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330007 | I4892 | Unspecified atrial flutter | ICD10 | 04032018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T10:34:14+00:00 |  | 000095883-01 | Russell | Goodwin | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330014 | J9801, R0789 | Other chest pain | ICD10 | 04032018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T10:49:53+00:00 |  | 000114253-01 | Michael | Murray | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330018 | I4891 | Unspecified atrial fibrillation | ICD10 | 04032018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T15:34:18+00:00 |  | 000011935-01 | BETTY | GROVE | HOSPITALIST MEDICINE PHY | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330047 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04022018 | 2018-04-02T08:59:07+00:00 |  | 000111202-01 | Edgar | Jansen | DAYTON GASTRO INC | 902197 | JONATHAN C | SAXE | 1073588976 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402004 | R6889 | Other general symptoms and signs | ICD10 | 04032018 | 03062018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03012018 | 2018-03-01T14:15:47+00:00 |  | 000099139-01 | Steven | Small | ALLIANCE PHYSICIANS INC | 910039 | DONALD W | AMES | 1306857891 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301057 | M170, M25561 | Pain in right knee | ICD10 | 04032018 | 03272018 | 03282018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03232018 | 2018-03-23T13:55:30+00:00 |  | 000077885-01 | Charles | Christopher | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323042 | M19022 | Primary osteoarthritis, left elbow | ICD10 | 04032018 | 03262018 | 03272018 | 24363 | ARTHROPLASTY TOTAL ELBOW REPLACMNT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T10:01:05+00:00 |  | 000085070-01 | Jack | Soliday | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03242018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326093 | I4891, I509 | Heart failure, unspecified | ICD10 | 04032018 | 03242018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03262018 | 2018-03-26T10:07:31+00:00 |  | 000101764-01 | Margaret | Oakleaf | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326100 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 04032018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T16:19:15+00:00 |  | 000107389-01 | Linda | Collins | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327051 | J441, R0902 | Hypoxemia | ICD10 | 04032018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T10:32:17+00:00 |  | 000068756-01 | DAVID | WILLIAMS | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328036 | R410 | Disorientation, unspecified | ICD10 | 04032018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04022018 | 2018-04-02T10:15:53+00:00 |  | 000005121-01 | LOUIS | RINGS | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402069 | S40021A | Contusion of right upper arm, initial encounter | ICD10 | 04032018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T08:41:29+00:00 |  | 000021414-01 | BOBBIE | BROWN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403003 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03302018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04032018 | 2018-04-03T08:53:21+00:00 |  | 000113679-01 | ROBERT | SWISHER | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403004 | R55 | Syncope and collapse | ICD10 | 04032018 | 03312018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03202018 | 2018-03-20T13:07:00+00:00 |  | 000092975-01 | Luan | Bowman | GRANDVIEW HOSPITAL & SOU | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03192018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320063 | R1013, R110 | Nausea | ICD10 | 04032018 | 03192018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T12:20:50+00:00 |  | 000068645-01 | WILLIS | YOAKUM | OSU INTERNAL MED LLC | 947140 | NATHAN A | DONHAM | 1558704940 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03212018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326048 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04032018 | 03212018 | 03222018 | 99218 | INITIAL OBSERVATION CARE, PER DAY, FOR THE EVALUATION AND MANAGEMENT O | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T15:18:52+00:00 |  | 000099686-01 | Dennis | Meekins | KNOX COMMUNITY HOSP GRP | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327054 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04032018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T10:39:04+00:00 |  | 000039710-01 | JAMES | LONEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328038 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302018 | 2018-03-30T10:06:03+00:00 |  | 000023929-01 | CLARENCE | KELLAR JR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330013 | L03116 | Cellulitis of left lower limb | ICD10 | 04032018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T11:01:11+00:00 |  | 000083009-01 | John | May | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330022 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 04032018 | 03292018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302018 | 2018-03-30T11:24:14+00:00 |  | 000113757-01 | Joyce | Mcintire | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330082 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04012018 | 2018-04-01T13:14:38+00:00 |  | 000098239-01 | Curtis | Moss | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402020 | D72829, I4891, J189 | Pneumonia, unspecified organism | ICD10 | 04032018 | 03312018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T08:27:07+00:00 |  | 000072142-01 | David | Binns | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04012018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402047 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04032018 | 04012018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T08:28:13+00:00 |  | 000044592-01 | GERALDINE | JUNK | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402051 | M545, R55 | Syncope and collapse | ICD10 | 04032018 | 03302018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T11:21:05+00:00 |  | 000041645-01 | JOHN | CROWLEY | CENTRAL OH HSPISTS INC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402062 | J209 | Acute bronchitis, unspecified | ICD10 | 04032018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T10:21:37+00:00 |  | 000106126-01 | Harold | Popewiny | KNOX COMMUNITY HOSPITAL | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402070 | R079 | Chest pain, unspecified | ICD10 | 04032018 | 03302018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T09:01:47+00:00 |  | 000098239-01 | Curtis | Moss | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403007 | I4891 | Unspecified atrial fibrillation | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T09:07:09+00:00 |  | 000051862-01 | DELORES | PLANT | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403009 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T09:47:46+00:00 |  | 000072096-01 | Kathleen | Kappes | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403011 | M25519 | Pain in unspecified shoulder | ICD10 | 04032018 | 03302018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T09:52:42+00:00 |  | 000030183-01 | DOROTHY | NEIGHBORS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 03312018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403013 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04032018 | 03312018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T09:52:55+00:00 |  | 000085128-01 | Ellen | De Walt | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403014 | M6281, R110 | Nausea | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T10:17:08+00:00 |  | 000002409-01 | PATRICIA | ALBERT | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403020 | R0602 | Shortness of breath | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T14:53:22+00:00 |  | 000081414-01 | David | Black | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403067 | R6889 | Other general symptoms and signs | ICD10 | 04032018 | 04022018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T15:00:37+00:00 |  | 000111853-01 | Bonnie | Frank | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03312018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403071 | R6889 | Other general symptoms and signs | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |

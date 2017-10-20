Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_OBS
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
| 10162017 | 2017-10-16T11:33:23+00:00 | 261806687289 | 000100142-01 | Beth | Aleshire | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016056 | I509 | Heart failure, unspecified | ICD10 | 10182017 | 10162017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10122017 | 2017-10-12T08:46:46+00:00 |  | 000083567-01 | Wanda | Greenhill | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012028 | I509 | Heart failure, unspecified | ICD10 | 10182017 | 10112017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T08:29:41+00:00 |  | 000085676-01 | Howard | Buskirk | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10102017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011014 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 10182017 | 10102017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10162017 | 2017-10-16T11:44:46+00:00 | 250677907286 | 000107148-01 | Sarah | Little | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10142017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016057 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 10182017 | 10142017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T11:51:31+00:00 | 250694067287 | 000008893-01 | JOHN | LUNDBERG | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10142017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016058 | R55 | Syncope and collapse | ICD10 | 10182017 | 10142017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T14:51:53+00:00 | 026314089-7286 | 000098574-01 | JOANN | PRICE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016098 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10182017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10172017 | 2017-10-17T10:23:17+00:00 |  | 000110670-01 | Jeffery | Hoskinson | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017049 | R0602 | Shortness of breath | ICD10 | 10182017 | 10162017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T17:20:01+00:00 |  | 000112431-01 | William J | Monroe Jr | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10142017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017035 | L03818 | Cellulitis of other sites | ICD10 | 10182017 | 10142017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T10:57:58+00:00 |  | 000053749-01 | Donald | Dearman | COPC CENTRAL OHIO PRIMAR | 918006 | MISAEL V | PURUGGANAN | 1962655159 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011057 | R079 | Chest pain, unspecified | ICD10 | 10182017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T10:55:02+00:00 |  | 000080496-01 | Mary | Murray | GENESIS MEDICAL GRP LLC | 920153 | AMMAR | ALAHMAR | 1356460190 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011056 | R55 | Syncope and collapse | ICD10 | 10182017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T10:38:49+00:00 |  | 000112252-01 | Patricia | Clark | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10102017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010076 | I509, R0902 | Hypoxemia | ICD10 | 10182017 | 10102017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T17:45:02+00:00 |  | 000114937-01 | Lawrence | Wilson | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018008 | E871, R001, R079 | Chest pain, unspecified | ICD10 | 10182017 | 10162017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T13:53:20+00:00 |  | 000095958-01 | Ronald | Cahoone | MARIETTA HLTH CARE PHYS | 951677 | SARAH | WESCOTT | 1629418207 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016042 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10182017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T08:51:45+00:00 |  | 000104760-01 | Edgar | Richards | KNOX COMMUNITY HSP PHYS | 931881 | MICHAEL D | HEUMAN | 1457349680 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10182017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016103 | K5669 | Other intestinal obstruction | ICD10 | 10182017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10112017 | 2017-10-11T08:39:15+00:00 |  | 000085035-01 | ROLF | HEGELE | ORTHO INSTITUTE OF DAYTO | 916279 | NICOLAS E | GRISONI | 1104959220 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011047 | M48062 | M48062 | ICD10 | 10182017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T12:13:23+00:00 |  | 000036782-01 | ELLENIA | WALTON | MUSKINGUM VALLEY HLTH CT | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013033 | J9811 | Atelectasis | ICD10 | 10182017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10132017 | 2017-10-13T14:57:47+00:00 |  | 000096803-01 | Mabel | Conley | CHARLES D HANSHAW DO INC | 913190 | CHARLES D | HANSHAW | 1871523209 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10122017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016073 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10182017 | 10122017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10122017 | 2017-10-12T11:29:51+00:00 |  | 000094565-01 | Dennis | Lucas | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012038 | M25551 | Pain in right hip | ICD10 | 10182017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10122017 | 2017-10-12T08:47:09+00:00 |  | 000081698-01 | David | Anderson | GENESIS MEDICAL GRP LLC | 917777 | MEGAN K | BARNES | 1932361383 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10112017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012029 | R079 | Chest pain, unspecified | ICD10 | 10182017 | 10112017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10152017 | 2017-10-15T11:32:33+00:00 |  | 000113544-01 | Margaret | French | INJU & RAJ SOIN MEDICAL CENTER | 919117 |  | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10182017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016084 | I214, I249 | Acute ischemic heart disease, unspecified | ICD10 | 10182017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10172017 | 2017-10-17T09:32:02+00:00 | 250193477289 | 000015096-01 | MYRTLE | COLEGROVE | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017011 | R531 | Weakness | ICD10 | 10182017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T10:10:40+00:00 |  | 000080644-01 | John | Hickman | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10152017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016112 | R109, R531 | Weakness | ICD10 | 10182017 | 10152017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T10:08:10+00:00 | 266606677291 | 000046336-01 | WILLIAM | STACK | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10182017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018026 | J668 | Airway disease due to other specific organic dusts | ICD10 | 10182017 | 10182017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T09:33:02+00:00 | 257346757290 | 000040228-01 | WILLIAM | JONES | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018011 | R0902 | Hypoxemia | ICD10 | 10182017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T09:13:57+00:00 | 259030157289 | 000046920-01 | WILLIAM | RANDALL | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017004 | J069 | Acute upper respiratory infection, unspecified | ICD10 | 10182017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10172017 | 2017-10-17T14:12:51+00:00 | 256989367290 | 000019403-01 | MARY | STEFANIDIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017064 | R319 | Hematuria, unspecified | ICD10 | 10182017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T14:10:07+00:00 |  | 000073458-01 | Lola | Bagby | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018066 | R6889 | Other general symptoms and signs | ICD10 | 10182017 | 10162017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10172017 | 2017-10-17T09:42:52+00:00 | 250481277289 | 000049909-01 | LEAH | HICKMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017017 | R079 | Chest pain, unspecified | ICD10 | 10182017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10172017 | 2017-10-17T10:04:29+00:00 | 251167407289 | 000006506-01 | Martha | Terry | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017026 | R748 | Abnormal levels of other serum enzymes | ICD10 | 10182017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T09:35:21+00:00 |  | 000034981-01 | RICHARD | SMITH | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010073 | I10, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10182017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10112017 | 2017-10-11T13:44:05+00:00 |  | 000099611-01 | Ralph | Mclean | MIAMI VALLEY HSPISTS GRP | 941454 | ISHA L | BUTLER | 1952693707 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10112017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011064 | I482 | Chronic atrial fibrillation | ICD10 | 10182017 | 10112017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T11:45:48+00:00 |  | 000044036-01 | Paul | Minshall | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010082 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 10182017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09122017 | 2017-09-12T13:56:15+00:00 |  | 000116264-01 | Arlene | Solomon | MERCY HEALTH PHYSICIANS | 921748 | SAMEH M | AREBI | 1578695664 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10182017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09082017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914015 | S5290XA | Unsp fracture of unsp forearm, init for clos fx | ICD10 | 10182017 | 09082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T16:01:26+00:00 |  | 000117468-01 | CAROLYN | MINK | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10072017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010043 | R0600, R627 | Adult failure to thrive | ICD10 | 10182017 | 10072017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T09:40:13+00:00 | 252610077290 | 000107283-01 | Walter | Martin | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018014 | R55 | Syncope and collapse | ICD10 | 10182017 | 10172017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T10:24:34+00:00 |  | 000106254-01 | WILLIAM | SAGE | S DAYTON ACUTE CARE CNSL | 919952 | RUSSELL S | HARVEY | 1285883934 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10182017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013037 | N342 | Other urethritis | ICD10 | 10182017 | 10112017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T13:51:12+00:00 |  | 000116568-01 | Robert | Garrison | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 10182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10162017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017076 | R55 | Syncope and collapse | ICD10 | 10182017 | 10162017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |

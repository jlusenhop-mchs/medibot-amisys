Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-23_thru_2018-02-25_OBS
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
|01312018|2018-01-31T12:50:27+00:00||000056799-01|PHILLIP|BEAL|RIVERSIDE METHODIST HSP|936400      0001||RIVERSIDE METHODIST HOSPITAL|1467484972|RIVERSIDE METHODIST HSP|936400      0001|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Observation|OBSV|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|01302018|02012018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180131071|H547|Unspecified visual loss|ICD10|02232018|01302018|02012018||||0|0||0||||||2|
|02012018|2018-02-01T10:48:33+00:00||000033496-01|REBECCA|WOHLFARTH|GENERAL SURG ASSOC INC|935086      0002|JEFFREY K|YENCHAR|1619963196|FAIRFIELD MEDICAL CENTER|936439      0002|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|01312018|02042018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180201021|K449|Diaphragmatic hernia without obstruction or gangrene|ICD10|02232018|01312018|02042018||||0|0||0||||||4|
|02022018|2018-02-02T08:39:28+00:00||000034686-01|GEORGIA|HUFFER|COMMUNITY HSPIST LLC|941890      0001|MUSSARET|ZUBERI|1639123409|FAIRFIELD MEDICAL CENTER|936439      0002|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02012018|02032018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180202019|M25559|Pain in unspecified hip|ICD10|02232018|02012018|02032018||||0|0||0||||||2|
|02112018|2018-02-11T09:25:20+00:00||000109979-01|Wayne|Conaway|COPC CENTRAL OHIO PRIMAR|932738      0003|SRIKANTH|KESARI|1932487337|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Observation|OBSV|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02102018|02112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212032|R42|Dizziness and giddiness|ICD10|02232018|02102018|02112018||||0|0||0||||||1|
|02122018|2018-02-12T09:04:39+00:00||000073793-01|Willie|Booth|FAIRFIELD INTERNAL MED|904235      0001|MICHAEL J|MURRAY|1346275104|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02112018|02132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180212069|R079|Chest pain, unspecified|ICD10|02232018|02112018|02132018||||0|0||0||||||2|
|02132018|2018-02-13T08:47:14+00:00||000020538-01|REDA|BAINTER|COPC CENTRAL OHIO PRIMAR|937397      0005|RALPH R|ROMAKER|1952380727|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02122018|02132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180213038|R079|Chest pain, unspecified|ICD10|02232018|02122018|02132018||||0|0||0||||||1|
|02132018|2018-02-13T08:50:31+00:00||000077007-01|David|Childers|RIVER VALLEY ORTHOS & SP|901115      0002|MARK M|D ONOFRIO|1316925811|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Southeast OH Essential Care|Fax|Observation|Inpatient|02122018|02132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180213044|M19012|Primary osteoarthritis, left shoulder|ICD10|02232018|02122018|02132018||||0|0||0||||||1|
|02132018|2018-02-13T15:06:31+00:00||000034793-01|FRANCES|RAVER|FAIRFIELD HLTHCARE PROFS|909975      0018|SARAH|BONZA|1487694709|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02132018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180214011|J189|Pneumonia, unspecified organism|ICD10|02232018|02132018|02202018||||0|0||0||||||7|
|02152018|2018-02-15T08:22:32+00:00||000083820-01|Don|Conrad|PRADEEP K PANDYA MD INC|937272      0003|PRADEEP K|PANDYA|1396721486|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02142018|02152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215014|N201|Calculus of ureter|ICD10|02232018|02142018|02152018||||0|0||0||||||1|
|02152018|2018-02-15T08:23:38+00:00||000045684-01|NORMA|FISHER|FAIRFIELD INTERNAL MED|904235      0002|MICHAEL J|MURRAY|1346275104|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02132018|02142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215016|R079|Chest pain, unspecified|ICD10|02232018|02132018|02142018||||0|0||0||||||1|
|02152018|2018-02-15T08:24:25+00:00||000084524-01|Lois|Wilson|ARBOR VIEW FAM MED INC|934765      0001|DAVID M|SCOGGIN|1891766259|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02142018|02162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215018|E875|Hyperkalemia|ICD10|02232018|02142018|02162018||||0|0||0||||||2|
|02152018|2018-02-15T08:25:49+00:00||000007158-01|RALPH|RAWN|FAIRFIELD INTERNAL MED|934614      0002|JOHNNY J|ABIDIN|1902885403|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02142018|02152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215027|R079|Chest pain, unspecified|ICD10|02232018|02142018|02152018||||0|0||0||||||1|
|02152018|2018-02-15T08:26:54+00:00||000008043-01|GREGORY|THRUSH|FAIRFIELD INTERNAL MED|934614      0002|JOHNNY J|ABIDIN|1902885403|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02142018|02152018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215029|R197|Diarrhea, unspecified|ICD10|02232018|02142018|02152018||||0|0||0||||||1|
|02152018|2018-02-15T08:29:27+00:00||000036592-01|DOROTHY|MATSON|FAIRFIELD INTERNAL MED|934614      0002|JOHNNY J|ABIDIN|1902885403|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02142018|02182018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215034|E871, I509, R0602|Shortness of breath|ICD10|02232018|02142018|02182018||||0|0||0||||||4|
|02152018|2018-02-15T12:05:23+00:00||000088687-01|Richard|Wyder|MERCY HEALTH PHYSICIANS|921387      0001|JOHN J|LEISGANG|1407802754|MERCY WEST HOSPITAL|927002      0003|1912007931|MERCY WEST HOSPITAL|1912007931|Observation|OBSV|Concurrent Review|CONC||MERCY WEST HOSPITAL|02232018|Approved|MediGold Southwest OH Essential Care|Fax|Observation|Inpatient|02142018|02162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180215042|R21, R55|Syncope and collapse|ICD10|02232018|02142018|02162018||||0|0||0||||||2|
|02162018|2018-02-16T08:23:25+00:00||000119072-01|Linda|Baker|FAIRFIELD INTERNAL MED|904235      0002|MICHAEL J|MURRAY|1346275104|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02152018|02162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216019|R112|Nausea with vomiting, unspecified|ICD10|02232018|02152018|02162018||||0|0||0||||||1|
|02162018|2018-02-16T09:49:18+00:00||000000934-01|NORMA|REED|COMMUNITY HSPIST LLC|941890      0001|MUSSARET|ZUBERI|1639123409|FAIRFIELD MEDICAL CENTER|936439      0002|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02152018|02192018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216020|R0602, R079|Chest pain, unspecified|ICD10|02232018|02152018|02192018||||0|0||0||||||4|
|02162018|2018-02-16T10:39:16+00:00||000051622-01|ALFRED|SPIEGLER|OHIOHEALTH PHYS GRP|910835      0001|PAUL R|BEERY|1508918319|GRANT MEDICAL CENTER|936409      0004|1255377149|GRANT MEDICAL CENTER|1255377149|Observation|OBSV|Concurrent Review|CONC||GRANT MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02152018|02162018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216040|S0101XA|Laceration without foreign body of scalp, initial encounter|ICD10|02232018|02152018|02162018||||0|0||0||||||1|
|02162018|2018-02-16T12:01:36+00:00||000119729-01|FLORENCE|GARRIS|FAIRFIELD HLTHCARE PROFS|943106      0003|AMANDA L|SLATER|1770844367|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02152018|02172018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180216051|R55|Syncope and collapse|ICD10|02232018|02152018|02172018||||0|0||0||||||2|
|02202018|2018-02-20T08:12:12+00:00||000015407-01|GLADYS|BUECHNER|FAIRFIELD HLTHCARE PROFS|951685      0002|JUSTIN J|ZAMOYSKI|1801236872|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220055|I472|Ventricular tachycardia|ICD10|02232018|02192018|02202018||||0|0||0||||||1|
|02202018|2018-02-20T08:18:58+00:00||000011998-01|WILLIAM|TOOTLE|AEBI GINTY ROMAKER SPROU|937397      0001|RALPH R|ROMAKER|1952380727|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180220061|R079|Chest pain, unspecified|ICD10|02232018|02192018|02202018||||0|0||0||||||1|
|02202018|2018-02-20T14:42:59+00:00||000105091-01|Linda|Burchett|PROFESSIONAL DIAGNOSTIC|925648      0003|GREGORY|CLARKE|1881671766|THE CHRIST HOSPITAL|936476      0004|1780633289|THE CHRIST HOSPITAL|1780633289|Observation|OBSV|Concurrent Review|CONC||THE CHRIST HOSPITAL|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02182018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221038|R079|Chest pain, unspecified|ICD10|02232018|02182018|02202018||||0|0||0||||||2|
|02202018|2018-02-20T15:28:57+00:00||000105935-01|Delmer|Lowe|COLS INPATIENT CARE INC|935779      0001|JEFFREY B|THURSTON|1891773248|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02192018|02232018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221045|D709, J90|Pleural effusion, not elsewhere classified|ICD10|02232018|02192018|02232018||||0|0||0||||||4|
|02202018|2018-02-20T15:46:56+00:00||000083729-01|David|Oty|GENESIS MEDICAL GRP LLC|924382      0002|DAWIT|WUBISHET|1083971311|COMMUNITY MERCY HEALTH P|906699      0006|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221047|I509|Heart failure, unspecified|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T09:03:48+00:00||000101430-01|Judy|George|INPATIENT SPECIALISTS PA|920609      0001|MICHAEL C|MURRAY|1972781821|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221067|R0602|Shortness of breath|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T09:04:54+00:00||000099388-01|Frank|Joseph|INPATIENT SPECIALISTS PA|920609      0001|MICHAEL C|MURRAY|1972781821|FAIRFIELD MEDICAL CENTER|936439      0004|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Observation|OBSV|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|02232018|Approved|MediGold Southeast OH Classic Preferred|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221069|R109|Unspecified abdominal pain|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T10:03:29+00:00||000092530-01|Lenville|Jones|APOGEE MED GRP OHIO INC|944985      0001|CHANDRA M|PALLA|1992084727|COMMUNITY MERCY HEALTH P|906699      0006|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Observation|OBSV|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221070|J90, J9601|Acute respiratory failure with hypoxia|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T15:14:39+00:00||000024434-01|ARNETTA|SEYMOUR|ADENA REGIONAL MED CTR|934811      0007|YADWINDER|SINGH|1083608830|BERGER HOSPITAL|936479      0003|1326020447|BERGER HOSPITAL|1326020447|Observation|OBSV|Concurrent Review|CONC||BERGER HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02212018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221076|E860|Dehydration|ICD10|02232018|02212018|02222018||||0|0||0||||||1|
|02212018|2018-02-21T10:52:38+00:00||000079538-01|Linda|Weber|APOGEE MED GRP OHIO INC|913926      0006|TERESA|FINKE|1124224423|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Observation|OBSV|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|02232018|Approved|MediGold Southwest OH Essential Care|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221079|E876, J441, J9601, R197, R531|Weakness|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02212018|2018-02-21T15:21:30+00:00||000010007-01|HAROLD|BREWER|KNOX COMMUNITY HOSP GRP|913996      0006|LAURA B|MURNANE|1578744124|KNOX COMMUNITY HOSPITAL|936422      0003|1295761963|KNOX COMMUNITY HOSPITAL|1295761963|Observation|OBSV|Concurrent Review|CONC||KNOX COMMUNITY HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02212018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222016|I951, R079|Chest pain, unspecified|ICD10|02232018|02212018|02222018||||0|0||0||||||1|
|02222018|2018-02-22T10:52:49+00:00||000058270-01|DALE|EGNER|SOUND INPATIENT PHYS OF|911533      0002||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02202018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222025|M6281|Muscle weakness (generalized)|ICD10|02232018|02202018|02222018||||0|0||0||||||2|
|02222018|2018-02-22T10:32:55+00:00||000062320-01|JO|WOLF|INDEPENDENT INPATIENT PH|907729      0002|MARK|DELLINGER|1710924410|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02212018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222044|I82401|Acute embolism and thombos unsp deep veins of r low extrem|ICD10|02232018|02192018|02212018||||0|0||0||||||2|
|02222018|2018-02-22T16:06:05+00:00||000073080-01|Loretta|Anderson|MOUNT CARMEL MEDICAL CTR|920184      0003||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222082|I498|Other specified cardiac arrhythmias|ICD10|02232018|02192018|02202018||||0|0||0||||||1|
|02232018|2018-02-23T09:43:02+00:00||000100979-01|Patricia|Kenyon|SOUND INPATIENT PHYS OF|911533      0002||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|SOUND INPATIENT PHYS OF|911533      0002|1376876755|SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|Observation|OBSV|Concurrent Review|CONC||SOUND INPATIENT PHYSICIANS OF OH LLC|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02212018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223011|I509|Heart failure, unspecified|ICD10|02232018|02212018|02222018||||0|0||0||||||1|
|02232018|2018-02-23T09:48:19+00:00||000036792-01|NANCY|MARTIN|CHARLES FAHRIG MD|936389      0003|CHARLES M|FAHRIG|1306856695|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223012|M6281|Muscle weakness (generalized)|ICD10|02232018|02192018|02222018||||0|0||0||||||3|
|02232018|2018-02-23T09:52:44+00:00||000069773-01|RALPH|MCALLISTER JR|FAIRFIELD PHYS INC|937254      0004|RICHARD D|OBERLANDER|1477581189|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02212018|02222018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223014|I639|Cerebral infarction, unspecified|ICD10|02232018|02212018|02222018||||0|0||0||||||1|
|02232018|2018-02-23T10:09:57+00:00||000086477-01|Becky|Cannaday|COLS INPATIENT CARE INC|910646      0006|MAGDALENA|GASIOROVA|1134389000|MOUNT CARMEL MEDICAL CTR|920184      0001|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02192018|02212018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223020|M6281|Muscle weakness (generalized)|ICD10|02232018|02192018|02212018||||0|0||0||||||2|
|02232018|2018-02-23T10:19:35+00:00||000006096-01|Carl|Kinman|MOUNT CARMEL MEDICAL CTR|920184      0001||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0001|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Essential Care|Fax|Observation|Inpatient|02192018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223023|I82401|Acute embolism and thombos unsp deep veins of r low extrem|ICD10|02232018|02192018|02202018||||0|0||0||||||1|
|02232018|2018-02-23T10:23:43+00:00||000042329-01|TERRY|STEGALL|MOUNT CARMEL MEDICAL CTR|920184      0001||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0001|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02232018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02182018|02202018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180223024|R42|Dizziness and giddiness|ICD10|02232018|02182018|02202018||||0|0||0||||||2|
|02202018|2018-02-20T15:45:27+00:00||000053290-01|CATHERINE|LANG|MOUNT CARMEL MEDICAL CTR|920184      0003||MOUNT CARMEL MEDICAL CENTER|1710067376|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Observation|OBSV|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|02252018|Approved|MediGold Classic Preferred|Fax|Observation|Inpatient|02182018|02232018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180221005|R933|Abnormal findings on dx imaging of prt digestive tract|ICD10|02252018|02182018|02232018||||0|0||0||||||5|

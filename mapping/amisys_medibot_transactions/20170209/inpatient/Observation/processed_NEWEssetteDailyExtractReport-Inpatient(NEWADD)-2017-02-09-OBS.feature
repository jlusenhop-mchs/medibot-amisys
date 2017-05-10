Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-09-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-09-OBS
Given I save the auth class "<auth_class>" to a variable
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "3" seconds
And in the "certification" page I should see the "loaded_sidebar" image
And I press "Control + N"
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And in the "Certification" page I enter "OB" into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
And the test pauses for "3" seconds
And I press "Control + S"
And the test pauses for "3" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "3" seconds
And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "3" seconds
And in the "authorized_services" page I should see the "authorized_services_header" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
And the test pauses for "2" seconds
And I use the sub class "<sub_class>" to determine what location to enter into the location image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I use the sub class "<sub_class>" to determine what count to enter into the count image
And the test pauses for "3" seconds

And in the "authorized_services" page I should see the "loaded_sidebar" image
And the test pauses for "3" seconds
And in the "authorized_services" page I enter "$" into the "prov" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
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

And I input the notes if any are contained in "<notes>"
And the test pauses for "5" seconds

And I press "Control + Q"
And the test pauses for "5" seconds
And I press ENTER graphically
And the test pauses for "5" seconds
And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
		| 02042017 | 2017-02-04T11:13:06+00:00 | 177340167034 | 000081163-01 | William | Gumm | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | ACO | Inpatient | 02092017 | 02102017 | Standard | Atrial Fib - $6,140 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206036 | I4891 | Unspecified atrial fibrillation | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/04/17 pt presented for admission on 02/03/17 thru ER with c/o shortness of breath and tachycardia.  Pt is admitted in  Observation status, 73-year-old male with a known history of coronary artery disease  as well as history of chronic obstructive pulmonary disease on 2 to 3 L of oxygen at home as well as history of atrial fibrillation  peripheral vascular disease  depression  hypertension  hyperlipidemia  history of pulmonary embolism in the past  who was currently recently admitted for HCAP pneumonia and chronic obstructive pulmonary disease exacerbation and was discharged on 01/27/2017  has presented again to the hospital secondary to atrial fibrillation with rapid ventricular response. He had an ECHO which showed reduced EF of 40-45%  he was diuresed with IV lasix. He underwent stress test which was negative and likely an artifactual lateral wall defect. His rate was controlled with cardizem gtt and he was switchd to PO cardizem. He was switched to toprol XL for HF  Ace I will be added at later time as his BP was soft. He has a hx of bleeding duodenal ulcers therefore is not on asa but is only on xarelto for afib. He was started on a statin to optimize medical therapy of CAD. He was started on spiriva to optimize COPD therapy to see if all of these methods improve the patients dyspnea on exertion. The pt had a CT of his pelvis for back/hip pain and he was just found to have severe osteoarthritis of L5-S1  he is seeing pain management clinic and will be following up with midwest pain and spine clinic. He will also be following up with cardiology., 02/07/17 CARDIOLOGY NOTED PT WAS OK FOR DISCHARGE.  PT NOT DISCHARGED UNTIL 02/08/17., MEETS ACO A-FIB, ACO A-FIB - Y  $6 140.00 | 02032017 | Inpatient | Inpatient | Approved  | 6 |
		| 02062017 | 2017-02-06T11:26:45+00:00 |  | 000090057-01 | Timothy | Hail | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206044 | I480 | Paroxysmal atrial fibrillation | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02042017 | Observation | Observation | Approved  | 5 |
		| 02052017 | 2017-02-05T12:19:43+00:00 | 254973387035 | 000029429-01 | DAVID | PETERS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206063 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/05/17 that pt presents for admission on 02/04/17 thru ER with c/o chest pain.  Pt is admitted in Inpatient status, 78-year-old white male with a history of pulmonary embolus  on Eliquis  who presented with acute onset of slurred speech at home and difficulty swallowing came to the emergency room.  In the emergency room  his CAT scan was obtained  which was negative and CTA of his neck was obtained  which only showed a 60% to 70% stenosis of his right internal carotid artery  but normal flow to the brain and he was admitted for further evaluation.  He was started on Lovenox because of his difficulty swallowing.  The morning following admission  he still had dysarthric speech and difficulty swallowing and Speech Therapy was consulted and felt that he would be appropriate for nectar thick diet.  He then had a significant improvement over the next 12 hours to where his speech came back to normal and had no difficulty swallowing.  He had a modified barium swallow the following day  which was completely normal and he was advanced to a regular diet.  He was of note that the day prior to his admission  he had a CT done for previous ESBL infection of his symphysis pubis and this showed a questionable abscess formation that was worse despite 8 weeks of ertapenem.  He was seen by both Infectious Disease and Orthopedics  who had previously biopsied his symphysis pubis.  Orthopedics felt that they could not take care of this problem and that this would be better taken care of at OSU where he had previous surgery in that area.  He remained afebrile throughout his hospital stay.  His blood cultures were negative and his white blood cell count was normal.  He was eating and feeling well.  He was therefore discharged to OSU after discussion with the surgeons at OSU., DISCHARGE DIAGNOSES:, 1.  Transient ischemic attack., 2.  Chronic osteomyelitis of symphysis pubis with abscess formation., 3.  History of extended-spectrum beta-lactamases E. coli infection., 4.  History of pulmonary embolus., 5.  Chronic kidney disease stage III., 6.  Hypertension., 7.  History of Takotsubo cardiomyopathy  which has resolved., CLINICALS REVIEWED IN POWER CHART DO NOT SUPPORT INPATIENT ADMISSION STATUS .  WILL FLIP AND SEND PM CHANGE FORM | 02042017 | Observation | Observation | Approved  | 5 |
		| 02012017 | 2017-02-01T14:07:35+00:00 |  | 000102947-01 | Ralph | Latham | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206073 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | 68 year old  presented to the ED on 01/28/2017 with an elevated troponin which was found with routine labs   mbr is s/p PTCA. Cardiologist relates abnormal troponin to international procedures.  The mbr was treated stabilized and  discharged home  on 01/29/2017. | 01282017 | Observation | Observation | Approved  | 2 |
		| 02012017 | 2017-02-01T14:19:38+00:00 |  | 000065896-01 | BRUCE | TRUDE | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206112 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | 83 year old male presented to the ED with c/o choking  d/t food bolus  which was resolved.  currently with c/o nausea and not feeling well.  The mbr was dx with Aspiration pneumonia of the RLL.  The mbr was treated stabilized and discharged on 01/29/2017 | 01282017 | Observation | Observation | Approved  | 2 |
		| 02032017 | 2017-02-03T08:27:06+00:00 |  | 000117624-01 | Gloria | Carson | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170206113 | 58181.0, N812 | Incomplete uterovaginal prolapse | ICD10 | 02092017 | 57280, 58720, 58180 | SUBTOTAL HYSTERECTOMY,SUPRACERVICAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
		| 02072017 | 2017-02-07T10:17:01+00:00 |  | 000039863-01 | EVERETT | CAMAC | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207020 | S76102A | Unsp injury of left quadriceps musc/fasc/tend, init | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02062017 | Observation | Observation | Approved  | 3 |
		| 02072017 | 2017-02-07T11:28:16+00:00 |  | 000001539-01 | GRACE | GILL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207051 | R569 | Unspecified convulsions | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Notified per mt carmel vista report dated 02/07/17 that pt presented for admission on 02/06/17 thru ER with c/o seizure.  Pt is admitted in Observation status. | 02062017 | Observation | Observation | Approved  | 3 |
		| 02012017 | 2017-02-01T15:16:33+00:00 |  | 000092179-01 | Patsy | Hertenstein | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02092017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207091 | R42, R4781 | Slurred speech | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | 71 year old female presented to the ED with  slurred speech and being off balance. The mbr was diagnosed with TIA. Admitted for MRI and neuro consult  no TPA.  Following diagnostic and  therapeutic procedures. The member was stabilized and is responding to treatment. Observation status is appropriate per MediGold Guidelines | 01292017 | Observation | Observation | Approved  | 4 |
		| 02022017 | 2017-02-02T09:06:13+00:00 |  | 000048497-01 | DOLORES | STUMBO | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02092017 | Denied | MediGold Medical Only | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207109 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
		| 02082017 | 2017-02-08T09:34:44+00:00 | 253267217037 | 000030946-01 | RICHARD | WILLIAMSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208016 | I959 | Hypotension, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/09/17 that pt presented for admission on02/07/17 thru ER with c/o fever and low BP.  Pt is admitted in Observation status | 02072017 | Observation | Observation | Approved  | 2 |
		| 02082017 | 2017-02-08T09:35:58+00:00 |  | 000066166-01 | DONNA | FORTNER | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208018 | R079 | Chest pain, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02072017 | Observation | Observation | Approved  | 2 |
		| 02022017 | 2017-02-02T12:09:45+00:00 |  | 000074223-01 | Alice | Shaw | COSHOCTON COUNTY MEM HSP | 936454 |  | COSHOCTON COUNTY MEMORIAL | 1053398099 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 02092017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208020 | R55 | Syncope and collapse | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02012017 | Observation | Observation | Approved  | 2 |
		| 02082017 | 2017-02-08T11:36:45+00:00 | 264129407038 | 000037032-01 | MARTHA | RIFFLE | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208045 | R296 | Repeated falls | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, 75-year-old Caucasian female who fell off a flight of steps earlier today.  The patient denies any loss of consciousness.  She also denies any nausea or vomiting.  She reports that she remembers all the events leading to her fall.  The patient was reportedly ambulatory after her fall., CT of the head without contrast demonstrates a right parafalcine and right frontal subdural hematomas measuring up to 5 mm in greatest thickness.  No associated mass effect., 02/08/17 NEUROSURGERY NOTE, Small  nonsurgical aSDH over right frontal pole with interhemispheric extension, Post-traumatic diplopia; RT medial rectus weakness, See me as OP in 2 weeks; CT Brain prior to visit., Needs OP Ophthalmology evaluation for diplopia, Alternate eye patching while awake, 02/08/17 DISCHARGED TO HOME W/MCHC, CLINICALS REVIEWED IN POWER CHART DO NOT SUPPORT INPATIENT ADMISSION STATUS.  WILL FLIP AND SEND PM CHANGE FORM | 02072017 | Observation | Observation | Approved  | 2 |
		| 02032017 | 2017-02-03T11:26:55+00:00 |  | 000060549-01 | CAROLE | COBBS | BEAVERCREEK MEDICAL CENTER | 919117 |  | BEAVERCREEK MEDICAL CENTER | 1760764849 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208066 | R001, R42 | Dizziness and giddiness | ICD10 | 02142017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017 | Observation | Observation |   | 3 |
		| 02042017 | 2017-02-04T12:54:43+00:00 |  | 000095753-01 | Cheryle | Reed | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02092017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208102 | A419, W540XXA | Bitten by dog, initial encounter | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017 | Observation | Observation |   | 3 |
		| 02062017 | 2017-02-06T08:33:03+00:00 |  | 000109101-01 | RALPH | WITHERS | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02092017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208107 | K436 | Other and unsp ventral hernia with obstruction, w/o gangrene | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
		| 02082017 | 2017-02-08T16:13:40+00:00 |  | 000117241-01 | Kathleen | Weber | THE CHRIST HSP MED ASSOC | 944471 | MAUSI A | OKUNADE | 1144286634 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02092017 | Denied | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208112 | I509, R0902 | Hypoxemia | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017 | Observation | Observation |   | 5 |
		| 02062017 | 2017-02-06T09:10:44+00:00 |  | 000076506-01 | Carolyn | Highley | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208122 | R079 | Chest pain, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
		| 02062017 | 2017-02-06T09:14:02+00:00 |  | 000077846-01 | Shelba | McNicol | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208125 | I5020, M25569, R079, Z950 | Presence of cardiac pacemaker | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
		| 02062017 | 2017-02-06T10:08:35+00:00 |  | 000088359-01 | Dora | Brumley | SOUND KENWOOD HSPISTS OF | 942938 | JESSICA L | HOYING | 1962723163 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02092017 | Denied | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209009 | E875, N3001, R4182 | Altered mental status, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | AMS  encephalopathy  Hyperkalemia  acute cystitis-all resolved with minimal treatment and discharged the next day (02/04/17) to home., Meets INPT MediGold guidelines. | 02032017 | Observation | Observation |   | 2 |
		| 02092017 | 2017-02-09T09:05:37+00:00 |  | 000083560-01 | David | Hicks | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Essential Care | Reports | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209012 | R079 | Chest pain, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 02082017 | Observation | Observation | Approved | 1 |
		| 02062017 | 2017-02-06T11:38:29+00:00 |  | 000080873-01 | Jerry | Stone | R CHUNDURI MD INC | 902627 | RAMAMOHAN | CHUNDURI | 1598739963 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209021 | M7989 | Other specified soft tissue disorders | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017 | Observation | Observation |   | 2 |
		| 02062017 | 2017-02-06T17:33:34+00:00 |  | 000015325-01 | HAZEL | KELLETT | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209113 | Z7901 | Long term (current) use of anticoagulants | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
Feature: Process Essette Extract 011217_MediGold_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 011217_MediGold_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q16778035 |
| Q17365184 |
| Q17365184 |
| Q17404515 |
| Q17407267 |
| Q17422385 |
| Q17461795 |
| Q17463334 |
| Q17463620 |
| Q17463863 |
| Q17465575 |
| Q17468295 |
| Q17469141 |
| Q17470455 |
| Q17470709 |
| Q17471279 |
| Q17471867 |
| Q17474614 |
| Q17476813 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17482201 |
| Q17483771 |
| Q17490666 |
| Q17491086 |
| Q17492861 |
| Q17493480 |
| Q17496284 |
| Q17496284 |
| Q17496284 |
| Q17496284 |
| Q17496284 |
| Q17496284 |
| Q17499467 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17500350 |
| Q17504141 |
| Q17504363 |
| Q17504447 |
| Q17504542 |
| Q17504700 |
| Q17504736 |
| Q17504855 |
| Q17504941 |
| Q17505256 |
| Q17505280 |
| Q17505554 |
| Q17505824 |
| Q17506008 |
| Q17506074 |
| Q17506246 |
| Q17506265 |
| Q17506437 |
| Q17506784 |
| Q17507152 |
| Q17507552 |
| Q17507735 |
| Q17508189 |
| Q17508294 |
| Q17508591 |
| Q17509636 |
| Q17509642 |
| Q17509891 |
| Q17509941 |
| Q17509891 |
| Q17509941 |
| Q17510112 |
| Q17510214 |
| Q17510217 |
| Q17510320 |
| Q17510320 |
| Q17510414 |
| Q17510437 |
| Q17510449 |
| Q17510511 |
| Q17510699 |

Feature: Process Essette Extract 012617_MEDIGOLD_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 012617_MEDIGOLD_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17468606 |
| Q17560192 |
| Q17564324 |
| Q17569207 |
| Q17569247 |
| Q17569247 |
| Q17569765 |
| Q17569765 |
| Q17570628 |
| Q17570974 |
| Q17572011 |
| Q17572803 |
| Q17574219 |
| Q17574564 |
| Q17574822 |
| Q17575656 |
| Q17575656 |
| Q17576278 |
| Q17576398 |
| Q17578009 |
| Q17579757 |
| Q17600045 |
| Q17604878 |
| Q17605931 |
| Q17607140 |
| Q17607577 |
| Q17607577 |
| Q17607577 |
| Q17607577 |
| Q17607904 |
| Q17610842 |
| Q17610875 |
| Q17610919 |
| Q17610919 |
| Q17611007 |
| Q17611087 |
| Q17611087 |
| Q17611284 |
| Q17611546 |
| Q17611566 |
| Q17611616 |
| Q17611690 |
| Q17611752 |
| Q17611754 |
| Q17611929 |
| Q17612057 |
| Q17612301 |
| Q17612323 |
| Q17612325 |
| Q17612414 |
| Q17612488 |
| Q17612587 |
| Q17612664 |
| Q17612778 |
| Q17612858 |
| Q17612930 |
| Q17612938 |
| Q17613053 |
| Q17613072 |
| Q17613372 |
| Q17613418 |
| Q17613556 |
| Q17613580 |
| Q17613620 |
| Q17613730 |
| Q17613983 |
| Q17614172 |
| Q17614310 |
| Q17614358 |
| Q17614358 |
| Q17614366 |
| Q17614446 |
| Q17614518 |
| Q17614521 |
| Q17614788 |
| Q17614825 |
| Q17615333 |
| Q17615531 |
| Q17615598 |
| Q17615617 |
| Q17615737 |
| Q17615747 |
| Q17615792 |
| Q17615886 |
| Q17615934 |
| Q17616389 |
| Q17616595 |
| Q17616677 |
| Q17616712 |
| Q17616774 |
| Q17616781 |
| Q17617186 |
| Q17617186 |
| Q17617252 |
| Q17617526 |
| Q17617666 |
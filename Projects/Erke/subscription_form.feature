Feature:subscription_form
  @javascript
	
Scenario: as a guest want to subscribe to the newsletter
  Given I am on "/user/register"
  Then I should see "Naujienų prenumerata"
  When I fill input "edit-submitted-new-1427299927618" with "rand_mail"
  Then I press the "edit-submit--2" button
  Then I should see "Ačiū, Jūsų el. pašto adresas įtrauktas į prenumeratorių sąrašą."
  
  
  
  
  
  
  




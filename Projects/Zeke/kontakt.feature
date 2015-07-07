Feature:Kontakt form
  @javascript
	Contact the site administrator
Scenario: operator I want to create Activiti in three steps
  Given I am on "/"
  Then I press the "kontakt" button
  And I fill input "edit-submitted-new-1427966225859" with "rand_letters"
  And I fill input "edit-submitted-new-1427966295161" with "rand_letters"
  And I fill input "edit-submitted-new-1427966409145" with "rand_mail"
  And I fill input "edit-submitted-new-1427966442257" with "random"
  When I click on the element with xpath "//*[@id='field_os_theme']/a"
  When I check "edit-submitted-new-1427966533057-1"
  Then the "edit-submitted-new-1427966533057-1" checkbox should be checked
  Then I press the "edit-submit" button
  
  
  
  
  
  
  
  
  
  
  
  
  




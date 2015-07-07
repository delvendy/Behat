@stage @LSA 1_version
 Feature: response for the first product
 @javascript
   Scenario: "answer 13 question option 'A' and 14 question 'NO'"
     Given I am on "/node/600"
     And I check "edit-submitted-question1-1"
     Then the "edit-submitted-question1-1" checkbox should be checked
     Then I click on the element with xpath "//*[@id='webform-client-form-600']/div/div[4]/input"
     And I check "edit-submitted-question2-1"
     Then the "edit-submitted-question2-1" checkbox should be checked
     And I check "edit-submitted-question3-1"
     Then the "edit-submitted-question3-1" checkbox should be checked
     Then I click on the element with xpath "//*[@id='webform-client-form-600']/div/div[4]/input"
     And I check "edit-submitted-question4-1"
     Then the "edit-submitted-question4-1" checkbox should be checked
     And I check "edit-submitted-question5-1"
     Then the "edit-submitted-question5-1" checkbox should be checked
     And I check "edit-submitted-question6-1"
     Then the "edit-submitted-question6-1" checkbox should be checked
     And I check "edit-submitted-question7-1"
     Then the "edit-submitted-question7-1" checkbox should be checked
     And I check "edit-submitted-question8-1"
     Then the "edit-submitted-question8-1" checkbox should be checked
     Then I click on the element with xpath "//*[@id='webform-client-form-600']/div/div[4]/input"
     And I check "edit-submitted-question9-1"
     Then the "edit-submitted-question9-1" checkbox should be checked
     And I check "edit-submitted-question10-1"
     Then the "edit-submitted-question10-1" checkbox should be checked
     And I check "edit-submitted-question11-1"
     Then the "edit-submitted-question11-1" checkbox should be checked
     And I check "edit-submitted-question12-1"
     Then the "edit-submitted-question12-1" checkbox should be checked
     And I check "edit-submitted-question13-1"
     Then the "edit-submitted-question13-1" checkbox should be checked
     And I check "edit-submitted-question14-2"
     Then the "edit-submitted-question14-2" checkbox should be checked
     Then I click on the element with xpath "//*[@id='webform-client-form-600']/div/div[4]/input"
     And I press "Skip"
	 Given I wait for 10 seconds
     

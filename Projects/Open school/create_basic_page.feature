Feature:purchase of goods
  @javascript
	as unregistered user I want be registered
Scenario: operator I want to create Activiti in three steps
  Given I am on "/user"
  Then I fill in "edit-name" with "testadmin"
  Then I fill in "edit-pass" with "testadmin@mail.com1"
  Then I press the "edit-submit" button
  Then I should see "Hello"
  When I follow "Tilføj indhold"
  When I follow "Basic page"
  And I fill input "edit-title" with "rand_letters"
  Given I wait for 2 seconds
  When I follow "switch_edit-body-und-0-value"
  And I fill input "edit-body-und-0-value" with "rand_letters"
  Then I press the "Gem" button
  Given I wait for 2 seconds
  Then I check submitted info
  
  
  
  
  
  
  
  
  
  
  
  




Feature:purchase of goods
  @javascript
	As a registered user I want to edit my profile
Scenario: as unregistered user I want be registered
  Given I am on "/user"
  Then I fill in "edit-name" with "testuser"
  Then I fill in "edit-pass" with "Admin!12"
  Then I press the "edit-submit" button
  Then I should see "Hello"
  When I follow "Tilføj indhold"
  When I follow "testuser"
  When I follow "Redigér"
  
  
 
  Then the "edit-mail" field should contain "testtest@mail.com"
  And I fill in "edit-mail" with "somethetext@mail.com" 
  And I fill in "edit-current-pass" with "Admin!12" 
  Then I press the "edit-submit" button 
  Then I should see "Ændringerne er blevet gemt."
  When I follow "Redigér"
  Then the "edit-mail" field should contain "somethetext@mail.com"
  And I fill in "edit-mail" with "testtest@mail.com"
  And I fill in "edit-current-pass" with "Admin!12"
  Then I press the "edit-submit" button 
  Then I should see "Ændringerne er blevet gemt."
  When I follow "testuser"
  When I follow "Redigér"
  Then the "edit-mail" field should contain "testtest@mail.com"
  
  




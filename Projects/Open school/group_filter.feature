Feature:group Filter
  @javascript
	group Filter
Scenario: group Filter on the fron page
  Given I am on "/"
  Given I wait for 1 seconds
  Then I click on the element with xpath "//*[@id='edit-area--2']/div[3]/label"
  Given I wait for 1 seconds
  Then I should see "FOUND 1 RESULT"
  And I should see "Rollespil"
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  




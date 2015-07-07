Feature:filter by level of school
  @javascript
	filter by level of school
Scenario: filter by level of school on the front page
  Given I am on "/"
  Given I wait for 1 seconds
  When I click on the element with xpath "//*[@id='edit-school-level']/div[2]/label"
  And I click on the element with xpath "//*[@id='edit-theme']/div[4]/label"
  Then I follow "Fag og læringsmål"
  
  Then I should see "Emne"
  And I should see "Matematik"
  And I should see "Natur og teknologi"
  And I should see "FOUND 6 RESULTS"
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  




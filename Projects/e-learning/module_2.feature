Feature:Module 2
  @javascript
	
Scenario: a second module
  Given I am on "/"
  Then I click on the element with xpath "//*[@id='popup-text']/button"
  And I should see "Välkommen"
  Given I wait for 2 seconds
  When I fill input "edit-name" with "test1@mail.co"
  And I fill input "edit-pass" with "test1@mail.co"
  When I press "Logga in"
  Given I wait for 1 seconds
  Then I follow "Modul 2. IMEDEEN´s utbud av hudvårdstabletter"
  Given I wait for 1 seconds
  And I should see "Modul 2 – IMEDEENs utbud av anti age-hudvårdstillskott"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 2 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 3 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 4 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 5 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 6 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 7 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 8 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 9 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 10 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 11 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 12 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 13 av 14"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 14 av 14"
  When I press "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 15"
  And I should see "Modul 2 – instuderingsfråga"
  
  When I check "1991"
  
  Given I wait for 1 seconds
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 2 av 15"
  When I check "Marine Complex"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 3 av 15"
  When I check "Proteiner och antioxidanter"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds

  Then I should see "Sida 4 av 15"
  When I check "Elastin"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 5 av 15"
  When I check "Tomater"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 6 av 15"
  When I check "Sant"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 7 av 15"
  When I check "Egenskaper som antioxidant"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 8 av 15"
  When I check "4"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 9 av 15"
  When I check "Sant"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 10 av 15"
  When I check "Östrogen"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 11 av 15"
  When I check "15 %"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 12 av 15"
  When I check "Kvinnor i klimakteriet"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 13 av 15"
  When I check "1"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 14 av 15"
  When I check "Ja"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 15 av 15"
  When I check "går att hitta i ett vanligt snabbköp"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  And I should see "Click here to go to module 3"
  Given I wait for 10 seconds
  
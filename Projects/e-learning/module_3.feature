Feature:Module 3
  @javascript
	
Scenario: -
  Given I am on "/"
  Then I click on the element with xpath "//*[@id='popup-text']/button"
  And I should see "Välkommen"
  Given I wait for 2 seconds
  When I fill input "edit-name" with "test1@mail.co"
  And I fill input "edit-pass" with "test1@mail.co"
  When I press "Logga in"
  Given I wait for 1 seconds
  Then I follow "Modul 3. IMEDEEN Hair&Nails"
  Given I wait for 1 seconds
  And I should see "MODUL 3 – IMEDEENs utbud av skönhetstillskott IMEDEEN Hair & Nails"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 5"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 2 av 5"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 3 av 5"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 4 av 5"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 5 av 5"
 
  When I press "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 14"
  And I should see "Modul 3 – instuderingsfråga"
  
  When I check "Via blodomloppet"
  
  Given I wait for 1 seconds
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 2 av 14"
  When I check "En typ av hår"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 3 av 14"
  When I check "54 procent"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds

  Then I should see "Sida 4 av 14"
  When I check "Sant"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 5 av 14"
  When I check "Marine Complex, kiseldioxid och biotin"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 6 av 14"
  When I check "För att motverka torr hud"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 7 av 14"
  When I check "Ja"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 8 av 14"
  When I check "För att rena kroppen från toxiner"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 9 av 14"
  When I check "Underhållet av normalt hår och naglar"
  And I should see "Correct answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 10 av 14"
  When I check "Endast kvinnor"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 11 av 14"
  When I check "Nej"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 12 av 14"
  When I check "1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 13 av 14"
  When I check "1–2 månader"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 14 av 14"
  When I check "Ja"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  And I should see "Click here to go to module 4"
  Given I wait for 1 seconds
  
  
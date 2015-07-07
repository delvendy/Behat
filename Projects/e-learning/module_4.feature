Feature:Module 4
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
  Then I follow "Modul 4. IMEDEEN Tan Optimizer"
  Given I wait for 1 seconds
  And I should see "MODUL 4 – IMEDEENs utbud av skönhetstillskott IMEDEEN Tan Optimizer"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 2 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 3 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 4 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 5 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 6 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 7 av 8"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 8 av 8"
  When I press "Nästa"
  
  Given I wait for 1 seconds
  And I should see "Sida 1 av 14"
  And I should see "Modul 4 – instuderingsfråga"
  When I check "En brun utan sol-produkt"
  Given I wait for 1 seconds
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 2 av 14"
  When I check "Att bestämma hudfärgen"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 3 av 14"
  When I check "80–90 %"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds

  Then I should see "Sida 4 av 14"
  When I check "Mineraler"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 5 av 14"
  When I check "Kvinnor och män över 18"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 6 av 14"
  When I check "Motverkar torr hud"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 7 av 14"
  When I check "En"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 8 av 14"
  When I check "Samma dag som du börjar exponera kroppen för sol"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 9 av 14"
  When I check "Lutein, lykopen, vindruvskärnextrakt och C-vitamin"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 10 av 14"
  When I check "Maskros"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 11 av 14"
  When I check "Det stimulerar huden före solexponering och hjälper till att skydda cellerna mot oxidativ stress"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 12 av 14"
  When I check "Ja"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 13 av 14"
  When I check "Ja"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 14 av 14"
  When I check "En tablett"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  
  
  When I follow "E-learning"
  Given I wait for 1 seconds
  Then field "edit-submitted-butik-apotek" should be required
  And field "edit-submitted-butikens-apotekets-adress" should be required
  And field "edit-submitted-ditt-for-och-efternamn" should be required
  And field "edit-submitted-ditt-telefonnummer-arbetet" should be required
  And field "edit-submitted-din-e-mailadress-arbetet" should be required
  And field "edit-submitted-du-arbetar-som" should be required
  And field "edit-submitted-secret-sentence" should be required
  
  When I fill input "edit-submitted-butik-apotek" with "rand_letters"
  When I fill input "edit-submitted-butikens-apotekets-adress" with "rand_letters"
  When I fill input "edit-submitted-ditt-for-och-efternamn" with "rand_letters"
  When I fill input "edit-submitted-ditt-telefonnummer-arbetet" with "rand_numb"
  When I fill input "edit-submitted-din-e-mailadress-arbetet" with "rand_mail"
  When I fill input "edit-submitted-du-arbetar-som" with "rand_letters"
  When I fill input "edit-submitted-secret-sentence" with "Beautiful skin begins within"
  Then I press "Skicka"
  Given I wait for 1 seconds
  And I should see "Tack"
  
  
  
  
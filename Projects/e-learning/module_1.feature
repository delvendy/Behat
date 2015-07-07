Feature:subscription_form
  @javascript
	
Scenario: as a guest want to subscribe to the newsletter
  Given I am on "/"
  Then I click on the element with xpath "//*[@id='popup-text']/button"
  And I should see "Välkommen"
  Given I wait for 2 seconds
  When I fill input "edit-name" with "test1@mail.co"
  And I fill input "edit-pass" with "test1@mail.co"
  When I press "Logga in"
  Given I wait for 1 seconds
  Then I follow "Modul 1. Huden och dess åldrande"
  Given I wait for 1 seconds
  And I should see "MODUL 1 – Huden och dess åldrande"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 2 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 3 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 4 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 5 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 6 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 7 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 8 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 9 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 10 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 11 av 12"
  Then I follow "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 12 av 12"
  When I press "Nästa"
  Given I wait for 1 seconds
  And I should see "Sida 1 av 15"
  And I should see "Modul 1 – instuderingsfråga"
  
  When I check "edit-submitted-quiz-page-1-questions-1-1"
  
  Given I wait for 1 seconds
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  
  Given I wait for 1 seconds
  
  Then I should see "Sida 2 av 15"
  When I check "edit-submitted-quiz-page-2-2-here-will-be-the-second-question-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 3 av 15"
  When I check "edit-submitted-quiz-page-3-3-here-will-be-the-third-question-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds

  Then I should see "Sida 4 av 15"
  When I check "edit-submitted-quiz-page-4-4-exponering-for-uv-ljus-okar-de-fria-radikalernas-skadliga-verkan-1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 5 av 15"
  When I check "edit-submitted-quiz-page-5-5-vad-ar-fria-radikaler-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 6 av 15"
  When I check "edit-submitted-quiz-page-6-6-vad-gor-de-fria-radikalerna-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 7 av 15"
  When I check "edit-submitted-quiz-page-7-7-vad-ar-antioxidanter-1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 8 av 15"
  When I check "edit-submitted-quiz-page-8-8-vad-gor-antioxidanter-1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 9 av 15"
  When I check "edit-submitted-quiz-page-9-9-hur-stor-andel-av-kollagenet-forlorar-vi-i-allmanhet-i-vuxen-alder-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 10 av 15"
  When I check "edit-submitted-quiz-page-10-10-vilka-ar-de-vanliga-synliga-tecknen-pa-hudens-aldrande-i-30-arsaldern-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 11 av 15"
  When I check "edit-submitted-quiz-page-11-11-vilka-ar-de-vanliga-synliga-tecknen-pa-hudens-aldrande-i-40-arsaldern-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 12 av 15"
  When I check "edit-submitted-quiz-page-12-12-hur-stor-andel-av-kollagenet-forlorar-huden-under-de-forsta-fem-aren-efter-klimakteriet-1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 13 av 15"
  When I check "edit-submitted-quiz-page-13-13-vilka-ar-de-vanliga-synliga-tecknen-pa-hudens-aldrande-i-50-arsaldern-1"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 14 av 15"
  When I check "58 %"
  And I should see "Wrong answer"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  
  Then I should see "Sida 15 av 15"
  When I check "edit-submitted-quiz-page-15-15-vad-skalas-av-vid-daglig-rakning-1"
  And I should see "Correct answer!"
  When I click on the element with xpath "//div[3]/div/button"
  Given I wait for 1 seconds
  And I should see "Click here to go to module 2"
  Given I wait for 10 seconds
  
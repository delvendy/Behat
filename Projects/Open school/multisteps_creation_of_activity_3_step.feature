Feature:purchase of goods
  @javascript
	as unregistered user I want be registered
Scenario: operator I want to create Activiti in three steps
  Given I am on "/user"
  Then I fill in "edit-name" with "testuser"
  Then I fill in "edit-pass" with "Admin!12"
  Then I press the "edit-submit" button
  Then I should see "Hello"
  When I follow "Tilføj indhold"
  Given I wait for 5 seconds
  Then I should see "Step 1"
  And I fill input "edit-title" with "rand_letters"
  
  When I follow "switch_edit-field-os-teaser-und-0-value"
  And I fill input "edit-field-os-teaser-und-0-value" with "rand_letters"
  When I follow "switch_edit-field-os-description-und-0-value"
  And I fill input "edit-field-os-description-und-0-value" with "rand_letters"
  
  When I attach the file "D:\work folder\Work image\Test image\test.gif" to "edit-field-os-image-und-0-upload"
  Given I wait for 5 seconds
  Then I press the "Upload" button

  Then I press the "Næste" button
  And I should not see "Feltet Overskrift er obligatorisk."
  And I should not see "Feltet Description er obligatorisk."
  And I should not see "Feltet Image er obligatorisk."
  And I should not see "Feltet Teaser er obligatorisk."
  When I select "Level 2" from "edit-field-os-level-and-subject-und-0-tid-select-1"
  Given I wait for 3 seconds
  When I select "Subject 5" from "edit-field-os-level-and-subject-und-0-tid-select-2"
  When I select "Theme 1" from "field_os_theme"
  When I click on the element with xpath "//*[@id='field_os_theme']/a"
  
  When I select "2" from "field_os_national_learning_goals"
  When I click on the element with xpath "//*[@id='field_os_national_learning_goals']/a"
  When I select "1" from "edit-field-os-area-und"
  When I select "2" from "edit-field-os-price-und"
  When I select "3" from "edit-field-os-season-semester-und"
  Then I press the "Næste" button
  And I should not see "Feltet Area er obligatorisk."
  And I should not see "Feltet National learning goals er obligatorisk."
  And I should not see "Feltet Price er obligatorisk."
  And I should not see "Feltet Season / semester er obligatorisk."
  And I should not see "Feltet Theme er obligatorisk."
  And I should see "Step 3"
  When I check "edit-field-os-activity-address-check-und"
  
  Then I fill input "edit-field-os-address-und-0-value" with "Skomakargatan 31A"
  Then I fill input "edit-field-os-city-und-0-value" with "Luleå"
  Then I fill input "edit-field-os-zipcode-und-0-value" with "rand_numb"
  When I follow "switch_edit-field-os-parking-description-und-0-value"
  And I fill input "edit-field-os-parking-description-und-0-value" with "rand_letters"
  Then I press the "Gem" button
  Given I wait for 10 seconds
  Then I check submitted info
  
  
  
  
  
  
  
  




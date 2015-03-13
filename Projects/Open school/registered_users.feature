Feature:purchase of goods
  @javascript
	as unregistered user I want be registered
Scenario: as unregistered user I want be registered
  Given I am on "/user/register"
 
  When I fill input "name" with "rand_letters"
  
  And I fill input "edit-mail" with "rand_mail"
  And I fill in "edit-pass-pass1" with "Admin!12"
  And I fill in "edit-pass-pass2" with "Admin!12"
  And I fill input "edit-profile-open-school-operator-profile-field-company-organisation-und-0-value" with "rand_letters"
  And I fill input "edit-profile-open-school-operator-profile-field-contact-first-name-und-0-value" with "rand_letters"
  And I fill input "edit-profile-open-school-operator-profile-field-contact-last-name-und-0-value" with "rand_letters"
  And I fill input "edit-profile-open-school-operator-profile-field-address-und-0-value" with "Skomakargatan 31A"
  And I fill input "edit-profile-open-school-operator-profile-field-city-und-0-value" with "Bodens"
  And I fill input "edit-profile-open-school-operator-profile-field-zipcode-und-0-value" with "rand_numb"
  And I fill input "edit-profile-open-school-operator-profile-field-phone-number-und-0-value" with "rand_numb"
  And I fill input "edit-profile-open-school-operator-profile-field-website-und-0-title" with "rand_letters"
  And I fill in "edit-profile-open-school-operator-profile-field-website-und-0-url" with "https://www.google.com.ua"
  And I fill input "edit-profile-open-school-operator-profile-field-e-mail-und-0-email" with "rand_mail"
  And I fill input "edit-profile-open-school-operator-profile-field-parking-description-und-0-value" with "rand_letters"
  Then I press the "Create new account" button
  Given I wait for 5 seconds
  Then I should see "Registration successful. You are now logged in."
  
  Then I check submitted info
  
  
  
  
  
  




Feature:purchase of goods
  @javascript
	slider
Scenario: slider to switch to the specified intervals
  Given I am on "/"
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 1 seconds
  When I click on the element with xpath "//*[@id='login']"
  Then I should see "Log in"
  Then I should see "Register"
  When I fill input "contact_title" with "rand_letters"
  When I fill input "from_name" with "rand_letters"
  When I fill input "from_email" with "rand_mail"
  When I fill input "member_number" with "rand_numb"
  When I fill input "occupation" with "rand_letters"
  When I fill input "work" with "rand_letters"
  When I check "terms"
  Given I wait for 1 seconds
  When I click on the element with xpath "//*[@id='content']/form/table/tbody/tr[3]/td/p[2]/input"
  Then I should see "Thank you for registering. Your login details will be emailed to you shortly."
Feature:purchase of goods
  @javascript
  as unregistered user I want to buy one commodity
  or this I use magazni Online
Scenario: Submits feedback when required fields are filled out
  Given I am on "/"
  Then I should see "Information about use of cookies"
  Given I wait for 5 seconds
  When I press the "Yes, I agree" button
  Then I should see "Let your beautiful skin come from the inside"
  Given I wait for 5 seconds
  When I click on the element with xpath "//div[2]/div[1]/div/div[3]/div/div/div[2]/div/div/div/div/p/a"
  Given I wait for 5 seconds
  Then I should see "IMEDEEN Online Shop"
  When I press the "edit-submit--3" button
  Then I should see "Item successfully added to your cart"
  When I click on the element with xpath "//div[2]/div[2]/div/div/div/div/div[2]/div[1]/a"
  Given I wait for 5 seconds
  Then I should see "Step 1 of 5: Your Basket"

  And I should see "IMEDEEN Prime Renewal™"
  And I should see "Total: £71.99"
  Then I press the "Next" button
  And I should see "Step 2 of 5: Personal information"
  And I should see "Account information"
  When I fill input "edit-account-login-mail" with "rand_mail"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" with "rand_letters"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" with "rand_letters"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-locality" with "rand_letters"
  And I should see "United Kingdom" in the "#edit-customer-profile-billing-commerce-customer-address-und-0-country" element
  Then the "edit-customer-profile-shipping-commerce-customer-profile-copy" checkbox should be checked
  Then field "account[login][mail]" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-locality" should be required
  Then I press the "Next" button
  And I should see "Step 3 of 5: Order summary"
  And I should see "IMEDEEN Prime Renewal™"
  And I should see "Total: £71.99"
  When I check "edit-extra-pane-node-84-termsofservice"
  Then I press the "Go to payment" button
  And I should not see "I confirm the order and agree to the terms and conditions field is required."
  Given I switch to iframe "epay_frame"
  And I should see " TEST ONLY"
  Given I wait for 5 seconds
  When I click on the element with xpath "//*[@id='ctl00_MainContent_WindowUC1_ctl00_ctl00_Logo3']"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_cardno" field should contain "3333 3333 3333 3000"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_expmonth" field should contain "03"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_expyear" field should contain "16"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_cvc" field should contain "123"
  Then I press the "ctl00_MainContent_WindowUC1_ctl00_ctl00_btnSubmitForm" button
  And I should see "Payment completed"
  When I click on the element with xpath "//*[@id='ctl00_MainContent_WindowUC1_ctl00_epay_payment_return_button']"
  Given I wait for 5 seconds
  And I should see "Thank you"
  




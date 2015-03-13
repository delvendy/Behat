@javascript
Feature:purchase of goods
  
  as unregistered user I want to buy one commodity
  or this I use magazni Online

    And I click on text "Empty basket" if it exists
Scenario: Submits feedback when required fields are filled out
  Given I am on "/"
  Then I should see "Information about use of cookies"
  When I press the "Yes, I agree" button
  Then I should see "Let your beautiful skin come from the inside"
  Given I wait for 5 seconds
  When I click on the text "Beauty club"
  Given I wait for 5 seconds

  When I fill in "edit-name" with "sales1@manager1.com"
  When I fill in "edit-pass" with "sales1@manager1.com"
  When I press the "Login" button
  Given I am on "/cart"

  And I click on text "Empty basket" if it exists
  When I click on the text "Empty basket" if it exists
  Given I wait for 5 seconds
  When I click on the text "Regular products"
  Given I wait for 5 seconds


  When I press the "edit-submit--3" button
  Then I should see "Item successfully added to your cart"
  When I click on the text "Go to checkout"
  Given I wait for 5 seconds
  Then I should see "Step 1 of 5: Your Basket"
  And I should see "IMEDEEN Prime Renewal™"
  And I should see "Total: £71.99"
  Then I press the "Next" button

  And I should see "Find user"
  When I fill input "edit-imedeen-precheckout-imedeen-precheckout-autocomplete" with "rand_mail"
  Then I press the "Continue to next step" button

  And I should see "Step 2 of 5: Personal information"
  And I should see "Billing information"

  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" field should contain ""
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" field should contain ""
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-locality" field should contain ""

  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" with "random"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" with "random"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-locality" with "random"
  And I should see "United Kingdom" in the "#edit-customer-profile-billing-commerce-customer-address-und-0-country" element
  Then the checkbox "customer_profile_shipping[commerce_customer_profile_copy]" should be checked
  When I check "edit-customer-profile-shipping-commerce-customer-profile-copy"

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
  




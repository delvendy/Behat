Feature:purchase of goods
  @javascript
  as unregistered user I want to purchase multiple items and receive a special offer using the optional address
Scenario: Submits feedback when required fields are filled out
  Given I am on "/"
  Then I should see "Information about use of cookies"
  Given I wait for 5 seconds
  When I click on the element with xpath "//*[@id='popup-text']/button"
  Then I should see "Let your beautiful skin come from the inside"
  Given I wait for 5 seconds
  When I click on the text "Buy Online"
  Given I wait for 5 seconds
  Then I should see "IMEDEEN Online Shop"
  When I press the "edit-submit--3" button
  Then I should see "Item successfully added to your cart"
  When I click on the text "Continue shopping"
  When I press the "edit-submit--2" button
  Then I should see "Item successfully added to your cart"
  When I click on the text "Continue shopping"
  When I press the "edit-submit--2" button
  Then I should see "Item successfully added to your cart"
  When I click on the text "Go to checkout"
  Given I wait for 5 seconds
  Then I should see "Step 1 of 5: Your Basket"
  
  And I should see "IMEDEEN Prime Renewal™"
  And I should see "MEDEEN Time Perfection™"
  And I should see "IMEDEEN Time Perfection™ 3 for 2 offer"
  And I should see "£0.00"
  And I should see "Total: £161.97"
  Then I press the "Next" button
  And I should see "Step 2 of 5: Personal information"
  And I should see "Account information"
  When I fill input "edit-account-login-mail" with "rand_mail"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" with "random"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" with "random"
  When I fill input "edit-customer-profile-billing-commerce-customer-address-und-0-locality" with "random"
  And I should see "United Kingdom" in the "#edit-customer-profile-billing-commerce-customer-address-und-0-country" element
  When I uncheck "edit-customer-profile-shipping-commerce-customer-profile-copy"
  Then the checkbox "customer_profile_shipping[commerce_customer_profile_copy]" should be unchecked
  Given I wait for 5 seconds
  
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-name-line" with "random"
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-thoroughfare" with "random"
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-locality" with "random"
  And I should see "United Kingdom" in the "#edit-customer-profile-shipping-commerce-customer-address-und-0-country" element
  
  Then field "account[login][mail]" should be required
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-name-line" should be required
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-thoroughfare" should be required
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-locality" should be required
  
  Then field "account[login][mail]" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" should be required
  Then field "edit-customer-profile-billing-commerce-customer-address-und-0-locality" should be required
  Then I press the "Next" button
  And I should see "Step 3 of 5: Order summary"
  And I should see "IMEDEEN Prime Renewal™"
  And I should see "MEDEEN Time Perfection™"
  And I should see "IMEDEEN Time Perfection™ 3 for 2 offer"
  And I should see "£0.00"
  And I should see "Total: £161.97"
  When I check "edit-extra-pane-node-84-termsofservice"
  Then I press the "Go to payment" button
  And I should not see "I confirm the order and agree to the terms and conditions field is required."
  Given I switch to iframe "epay_frame"
  And I should see " TEST ONLY"
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
  




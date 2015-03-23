Feature:site_map
  @javascript
  
Scenario: walk through the site map
  Given I am on "/"
  Then I should see "puuk.ee"
  When I press the "Yes, I agree" button
  
  And I wait for 5 seconds
  When I click on the text "Kes on puuk?"
  And I wait for 5 seconds
  Then I should see "Kes on puuk?"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the element with xpath "//*[@id='node-281']/div/div/div[2]/div/div/ul/li[2]/a"
  Then I should see "Puugihammustus"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the text "Haigused"
  Then I should see "Puukentsefaliidi viirus (TBE-viirus)"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the text "Puukentsefaliidi viirus (TBE-viirus)"
  Then I should see "Puukentsefaliidi viirus (TBE-viirus)"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the text "Puukborrelioos"
  Then I should see "Puukborrelioos"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the text "Erlihhioos"
  Then I should see "Erlihhioos"
  When I click on the element with xpath "//*[@id='block-block-16']/div/div[2]/div/div/a[1]"
  Then I should see "Sisujuht"
  When I click on the element with xpath "//*[@id='node-281']/div/div/div[2]/div/div/ul/li[3]/a"
  
  
  
  
  
  
  
  
  
  
  
  
  
  
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
  And I wait for 5 seconds
  Then I should see "Step 1 of 5: Your Basket"
  And I should see "IMEDEEN Prime Renewal™"
  And I should see "MEDEEN Time Perfection™"
  And I should see "IMEDEEN Time Perfection™ 3 for 2 offer"
  And I should see "£0.00"
  And I should see "Total: £161.97"
  Then I press the "Next" button
  And I should see "Step 2 of 5: Personal information"
  And I should see "Account information"
  
  When I fill in "login" with "test1@mail.com"
  When I fill in "edit-pass" with "Admin12!"
  When I press the "Login" button
  
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-name-line" field should contain "qwe qwe"
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-thoroughfare" field should contain "dddddddd"
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-premise" field should contain "fffffff"
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-administrative-area" field should contain "ggggggg"
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-locality" field should contain "hhhhh"
  Then the "edit-customer-profile-billing-commerce-customer-address-und-0-postal-code" field should contain "123"
  And I should see "United Kingdom" in the "#edit-customer-profile-billing-commerce-customer-address-und-0-country" element
  When I uncheck "edit-customer-profile-shipping-commerce-customer-profile-copy"
  And I wait for 5 seconds
  
  
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-name-line" with "rand_letters"
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-thoroughfare" with "rand_letters"
  When I fill input "edit-customer-profile-shipping-commerce-customer-address-und-0-locality" with "rand_letters"
  And I should see "United Kingdom" in the "#edit-customer-profile-shipping-commerce-customer-address-und-0-country" element
  
  
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-name-line" should be required
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-thoroughfare" should be required
  Then field "edit-customer-profile-shipping-commerce-customer-address-und-0-locality" should be required
  
  
  Then field "customer_profile_shipping[commerce_customer_address][und][0][name_line]" should be required
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
  And I wait for 5 seconds
  When I click on the element with xpath "//*[@id='ctl00_MainContent_WindowUC1_ctl00_ctl00_Logo3']"
  And I wait for 5 seconds
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_cardno" field should contain "3333 3333 3333 3000"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_expmonth" field should contain "03"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_expyear" field should contain "16"
  Then the "ctl00_MainContent_WindowUC1_ctl00_ctl00_cvc" field should contain "123"
  Then I press the "ctl00_MainContent_WindowUC1_ctl00_ctl00_btnSubmitForm" button
  And I wait for 5 seconds
  And I should see "Payment completed"
  
  When I click on the element with xpath "//*[@id='ctl00_MainContent_WindowUC1_ctl00_epay_payment_return_button']"
  And I wait for 5 seconds
  And I should see "Thank you"
  




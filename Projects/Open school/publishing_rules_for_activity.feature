Feature:purchase of goods
  @javascript
	as unregistered user I want be registered
Scenario: operator I want to create Activiti in three steps
  Given I am on "/user"
  Then I fill in "edit-name" with "testadmin"
  Then I fill in "edit-pass" with "testadmin@mail.com1"
  Then I press the "edit-submit" button
  Then I should see "Hello"
  Given I am on "/open-school/content"
  When I select "Nej" from "status"
  When I select "open_school_activity" from "type"
  Then I press the "edit-submit-open-school" button
  Given I wait for 2 seconds
  When I click on the element with id "edit-views-bulk-operations-0" if it exists
  Given I wait for 2 seconds
  When I select "action::node_publish_action" from "operation"
  Then I press the "edit-submit--2" button
  Given I wait for 2 seconds
  Then I press the "edit-submit" button
  Given I wait for 10 seconds
  Then I should see "Performed Publish"
  
  
  
  
  
  
  
  
  
  
  




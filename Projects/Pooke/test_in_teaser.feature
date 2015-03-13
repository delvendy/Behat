Feature:purchase of goods
  @javascript
	test
Scenario: Check the web form in the teaser
  Given I am on "/"
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='testopen']"
  Given I wait for 2 seconds
  Then I should see "TBE Travel Check"
  When I click on the element with xpath "//*[@id='prevNext2']/img"
  Given I wait for 2 seconds
  Then I should see "Q1"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='slides']/div[2]/div/input[1]"
  When I click on the element with xpath "//*[@id='slides']/div[2]/div/div/div/img[2]"
  Given I wait for 2 seconds
  Then I should see "Q2"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='slides']/div[3]/div/input[1]"
  When I click on the element with xpath "//*[@id='slides']/div[3]/div/div/div/img[2]"
  Given I wait for 2 seconds
  Then I should see "Q3"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='slides']/div[4]/div/input[1]"
  When I click on the element with xpath "//*[@id='slides']/div[4]/div/div/div/img[2]"
  Given I wait for 2 seconds
  Then I should see "Q4"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='slides']/div[5]/div/input[1]"
  When I click on the element with xpath "//*[@id='slides']/div[5]/div/div/div/img[2]"
  Given I wait for 2 seconds
  Then I should see "Your TBE Travel Check is complete."
  Then I press the "B1" button
  Then I should see "Your TBE Travel Check Result"
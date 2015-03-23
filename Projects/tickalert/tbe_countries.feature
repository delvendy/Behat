Feature:purchase of goods
  @javascript
	countries
Scenario: check if a string and information about them
  Given I am on "/"
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='countries']/div[1]/a"
  Given I wait for 2 seconds
  Then I should see "TBE Countries"
  Then I should see "Austria"
  Then I should see "Albania"
  Then I should see "Belarus"
  Then I should see "Bosnia"
  Then I should see "Croatia"
  Then I should see "Czech Republic"
  Then I should see "Denmark "
  Then I should see "Estonia"
  Then I should see "Finland"
  Then I should see "France"
  Then I should see "Germany"
  Then I should see "Greece"
  Then I should see "Hungary "
  Then I should see "Italy"
  Then I should see "Latvia"
  Then I should see "Lithuania"
  Then I should see "Moldova"
  Then I should see "Norway"
  Then I should see "Poland"
  Then I should see "Romania"
  Then I should see "Russia"
  Then I should see "Serbia"
  Then I should see "Slovakia"
  Then I should see "Slovenia"
  Then I should see "Sweden"
  Then I should see "Switzerland and Liechtenstein"
  Then I should see "Ukraine"
  When I click on the text "Ukraine"
  Given I wait for 2 seconds
  Then I should see "Ukraine"
  
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 5 seconds
  
  
  
  
  
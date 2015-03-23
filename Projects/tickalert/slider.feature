Feature:purchase of goods
  @javascript
	slider
Scenario: slider to switch to the specified intervals
  Given I am on "/"
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Then I should see the css selector "#tbeSlider > img:nth-child(1)"
  Given I wait for 5 seconds
  Then I should see the css selector "#tbeSlider > img:nth-child(2)"
  Given I wait for 5 seconds
  Then I should see the css selector "#tbeSlider > img:nth-child(3)"
  Given I wait for 5 seconds
  Then I should see the css selector "#tbeSlider > img:nth-child(4)"
  Given I wait for 5 seconds
  Then I should see the css selector "#tbeSlider > img:nth-child(5)"
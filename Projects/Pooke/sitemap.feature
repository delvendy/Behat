Feature:purchase of goods
  @javascript
	sitemap
Scenario: sitemap without login
  Given I am on "/"
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 5 seconds
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[1]/a/b/span"
  Given I wait for 2 seconds
  When I click on the element with xpath "//*[@id='fancybox-close']"
  Given I wait for 2 seconds
  Then I should see "Tick Borne Encephalitis (TBE) is a serious disease"
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[2]/a/b/span"
  Then I should see "TBE facts"
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[3]/a/b/span"
  Then I should see "What the experts say"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[4]/a/b/span"
  Then I should see "TBE advice & information"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[5]/a/b/span"
  Then I should see "TBE Countries"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[6]/a/b/span"
  Then I should see "2014 Survey"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[7]/a/b/span"
  Then I should see "FAQs"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[8]/a/b/span"
  Then I should see "Links"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[9]/a/b/span"
  Then I should see "Media"
  
  Then I click on the text "Site Map"
  Then I should see "Site Map"
  When I click on the element with xpath "//*[@id='content']/ul/li[10]/a/b/span"
  Then I should see "Log in"
  
  
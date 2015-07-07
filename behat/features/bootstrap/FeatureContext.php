<?php

use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Drupal\DrupalExtension\Context\DrupalContext;
use Behat\Behat\Context\ClosuredContextInterface;
use Drupal\SubContextInterface;
use Behat\Mink\Driver\Selenium2Driver;

//
// Require 3rd-party libraries here:
//
   require_once 'PHPUnit/Autoload.php';
   require_once 'PHPUnit/Framework/Assert/Functions.php';
//
/**
 * Defines application features from the specific context.
 */
class FeatureContext extends DrupalContext implements Context, SnippetAcceptingContext
{
	public $fields_data = array();
	public $windows = array();
	public $submitted_info = array();
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
	
    {
    }
	/**
     * Click on the element with the provided xpath query
     *
     * @When /^I click on the element with xpath "([^"]*)"$/
    */
	public function iClickOnTheElementWithXPath($xpath)
    {
        $session = $this->getSession(); // get the mink session
        $element = $session->getPage()->find(
            'xpath',
            $session->getSelectorsHandler()->selectorToXpath('xpath', $xpath)
        ); // runs the actual query and returns the element
        // errors must not pass silently
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Could not evaluate XPath: "%s"', $xpath));
        }
		// ok, let's click on it
        $element->click();
 
    }
   /**
   * @When /^I fill input "([^"]*)" with "([^"]*)"$/
   * ввод рандомных данных в одно поле
   */
  public function iFillInputWith($field, $value) {
     $alphabets = array(
      'latin' => 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
      'cyrillic' => 'абвгдеёжзийклмнопрстуфхцчшщъыьэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ',
    );

    if ($value == 'random') {
      $chars = $alphabets['latin'] . '0123456789#!$%^&*()_-+=';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 15; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
    }
    elseif ($value =='rand_mail') {
      $chars = $alphabets['latin'] . '0123456789';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 10; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
      $value .= '@mail.com';
    }
	elseif ($value =='rand_letters') {
      $chars = $alphabets['latin'];
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 10; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
      
    }
    elseif ($value =='rand_numb') {
      $chars = '0123456789';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 10; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
    }

    $this->fields_data[$field] = $value;
    array_push($this->submitted_info, $value);


    $this->getSession()
        ->getPage()
        //->find('css', $id . ' input[name="' . $type . '"]')
        ->findField($field)
        ->setValue($value);
  }
  /**
     * Check field to be bound
     *
     * @Then /^(?:|The )field "([^"]*)" should be required$/
	 * проверка обязательности поля
     */

  public function theFieldShouldBeRequired($field) {
    $page = $this->getSession()->getPage();

    // get the object of the field
    $formField = $page->findField($field);
    // get the 'class' attribute of the field
    $class = $formField->getAttribute("class");
    // we get one or more classes with space separated. Split them using space
    $class = explode("-", $class);
    // if the field has 'error' class, then the field will be outlined with red
    if (in_array("error", $class)) {

      throw new Exception('The field "' . $field . '" should be required');

    }
  }
  /**
   * @Given /^I switch to iframe "([^"]*)"$/
   */
  public function iSwitchToIframe($iframe)
  {
    $this->getSession()->switchToIFrame($iframe);
  }
  /**
    * @Given /^I wait for (\d+) seconds$/
    */
    public function iWaitForSeconds($seconds)
    {
      $this->getSession()->wait($seconds*1000);
    }
	/**
    * Click some text
    *
    * @When /^I click on (?:|the )text "([^"]*)"$/
    */
    public function iClickOnTheText($text)
    {
        $session = $this->getSession();
        $element = $session->getPage()->find(
            'xpath',
            $session->getSelectorsHandler()->selectorToXpath('xpath', '*//*[text()="'. $text .'"]')
        );
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Cannot find text: "%s"', $text));
        }
        $element->click();
    }

    /**
    * Click some text if available
    *
    * @When /^I click on (?:|the )text "([^"]*)" if it exists$/
    */
    public function iClickOnTheTextIfItExists($locator) {
        $session = $this->getSession();
        $link = $session->getPage()->find(
             'xpath',
             $session->getSelectorsHandler()->selectorToXpath('xpath', '*//*[text()="'. $locator .'"]')
        );
        if (NULL !== $link) {
            $link->click();	
        }
    }


    /**
     * @Then /^I check image sources$/
     * Find images with absolute links
     */
    public function iCheckImageSources() {
      $page = $this->getSession()->getPage();
      $sitemapLinks = $page->findAll('css', '.site-map-menu > li > a');
      foreach ($sitemapLinks as $link) {
        $link->click();
        $images = $page->findAll('css', 'img');
        $currentUrl = explode('/', $this->getSession()->getCurrentUrl());
        $baseUrl = $currentUrl[0] . '//' . $currentUrl[2];
        foreach ($images as $image) {
          $src = $image->getAttribute('src');
          if (strpos($src, $baseUrl) === false) {
            throw new \Exception(sprintf('Error in image source "%s" on page %s', $src, $this->getSession()->getCurrentUrl()));
          }
        }
         $this->getSession()->back();
      }
    }
    /**
    * @When /^I fill input one "([^"]*)" and two "([^"]*)" with "([^"]*)"$/
    * the same data in two different fields
    */
	public function iFillInputOneAndTwoWith($field_one, $field_two, $value) {
     $alphabets = array(
      'latin' => 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
      'cyrillic' => 'абвгдеёжзийклмнопрстуфхцчшщъыьэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ',
    );

    if ($value == 'random') {
      $chars = $alphabets['latin'] . '0123456789#!$%^&*()_-+=';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 15; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
    }
    elseif ($value =='rand_mail') {
      $chars = $alphabets['latin'] . '0123456789';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 10; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
      $value .= '@mail.com';
    }
    elseif ($value =='rand_numb') {
      $chars = '0123456789';
      $strlen = strlen($chars) - 1;
      $value = '';
      for ($i = 0; $i < 10; ++$i) {
        $value .= $chars[rand(0, $strlen)];
      }
    }

    $this->fields_data[$field_one] = $this->fields_data[$field_two] = $value;

    $this->getSession()
        ->getPage()
        //->find('css', $id . ' input[name="' . $type . '"]')
        ->findField($field_one)->setValue($value);

    $this->getSession()
        ->getPage()->findField($field_two)->setValue($value);
  }
	/**
      * Checks, that page contains submitted info.
      *
      * @Then /^I check submitted info$/
      */
     public function iCheckSubmittedInfo()
     {
        $info = $this->submitted_info;
        $actual= $this->getSession()->getPage()->getText();
          foreach ($info as $value) {
            try {
              assertContains($value, $actual);
            } 
            catch (AssertException $e) {
              $message = sprintf('The text "%s" was not found anywhere in the text of the current page', $value);
              throw new ResponseTextException($message, $this->getSession(), $e);
            }
          }
      }
	 
	
	  /**
		* Click some element with id if available
		*
		* @When /^I click on (?:|the )element with id "([^"]*)" if it exists$/
		*/
		public function iClickOnTheElementWithIdIfItExists($id) {
			$session = $this->getSession();
			$element = $session->getPage()->findField($id);
			if (NULL !== $element) {
				$element->click(); 
			}
		}
	  /**
	   * @Then /^I should see the css selector "([^"]*)"$/
	   */
	  public function iShouldSeeTheCssSelector($css_selector) {
		$element = $this->getSession()->getPage()->find("css", $css_selector);
		if (empty($element)) {
		  throw new \Exception(sprintf("The page '%s' does not contain the css selector '%s'", $this->getSession()->getCurrentUrl(), $css_selector));
		}
	  }
     
  




    

    /**
     * Get the editor instance for use in Javascript.
     *
     * @param string $selector
     *   Any selector of a form field.
     *
     * @throws \RuntimeException
     * @throws \Exception
     * @throws NoSuchElement
     *
     * @javascript
     *
     * @return string
     *   A Javascript expression representing the WYSIWYG instance.
     */
    public function getWysiwygInstance($selector = null)
    {
        if (!$selector && !$this->wysiwyg) {
            throw new \RuntimeException('No such editor was not selected.');
        }

        $this->selector = $selector ?: $this->wysiwyg;
        $field = $this->getWorkingElement()->findField($this->selector);

        $this->throwNoSuchElementException($this->selector, $field);
        $id = $field->getAttribute('id');

        $instance = "CKEDITOR.instances['$id']";

        if (!$this->getSession()->evaluateScript("return !!$instance")) {
          throw new \Exception(sprintf('The editor "%s" was not found on the page %s', $id, $this->getSession()->getCurrentUrl()));
        }

        return $instance;
    

    }
	
    
    
	}
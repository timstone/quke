Feature: Limited company registers flood risk activity exemption
  As an individual
  I want to register a location for a flood risk activity exemptions
  So that I can check that my activity does not harm the environment in that area

  Background: 
  Given I register for a new exemption

  @happy_path
  Scenario: Individual registers location for flood risk activity exemption
  Given I register exemption FRA16
  And I register as an individual
  When I confirm my registration
  Then I will be informed that my application has been received
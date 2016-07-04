Feature: Partnership registers flood risk activity exemption
  As a partnership
  I want to register a location for a flood risk activity exemptions
  So that I can check that my activity does not harm the environment in that area

  Background: 
  Given I register for a new exemption

  @happy_path
  Scenario: Partnership registers location for flood risk activity exemption
  Given I register exemption FRA11
  And I register as a partnership
  When I confirm my registration
  Then I will be informed that my application has been received

  @wip
  @javascript
  Scenario: Partnership changes registration partnership details
  Given I register exemption FRA17
  And I register as a partnership with three partners
  But remove one partner
  When I confirm my registration
  Then I will be informed that my application has been received
@wip
  Scenario: Partnership changes registration partnership details with javascript turned off
  Given I register exemption FRA17
  And I register as a partnership with three partners
  But remove one partner with javascript turned off
  When I confirm my registration
  Then I will be informed that my application has been received



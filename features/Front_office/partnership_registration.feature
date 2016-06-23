Feature: Charity (other user type) registers flood risk activity exemption
  As a partnership
  I want to register a location for a flood risk activity exemptions
  So that I can check that my activity does not harm the environment in that area

  Background: 
  Given I register for a new exemption

  @happy_path
  Scenario: Partnership registers location for flood risk activity exemption with manual address
  Given I register exemption FRA11
  And I register as a partnership
  When I confirm my registration
  Then I will be informed that my application has been received
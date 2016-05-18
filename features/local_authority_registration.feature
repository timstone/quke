Feature: Local authority registers flood risk activity exemption
  As a local authority
  I want to register a location for a flood risk activity exemptions
  So that I can check that my activity does not harm the environment in that area

Scenario: Local authoriy registers location for flood risk activity exemption
  Given I register an exemption for a local authority
  When I confirm my registration
  Then I will be informed that my application has been received

 Scenario: Local authority registers multiple exemptions then removes all from registration
 Given I register multiple exemptions for a local authority
 But I remove my chosen exemptions
 Then I will be asked to select an exemption activity

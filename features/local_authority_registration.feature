Feature: Local authority registers flood risk activity exemption
  As a local authority
  I want to register a location for a flood risk activity exemptions
  So that I can check that my activity does not harm the environment in that area

@happy_path
Scenario: Local authoriy registers location for flood risk activity exemption
  Given I register an exemption for a local authority
  When I confirm my registration
  Then I will be informed that my application has been received

 Scenario: Local authority registers multiple exemptions then removes all from registration
 Given I register multiple exemptions for a local authority
 But I remove my chosen exemptions
 Then I will be asked to select an exemption activity


 Scenario: Registering FRA23 dredging up to 1.5km exemption requires a dredging length
 Given I'm registering a new exemption
 When I select an FRA3 dredging exemption activity
 Then I will be asked to provide location details
 And I will be asked to give the length of dredging planned

 Scenario: Registering FRA24 dredging exemption does not require a dredging length
 Given I'm registering a new exemption
 When I select an FRA24 dredging exemption activity
 Then I will be asked to provide location details
 But I will not be asked to give the length of dredging planned


Given(/^I register as a partnership$/) do
  @app.user_type_page.wait_for_submit_button
  @app.user_type_page.radio_buttons.find { |btn| btn.value == 'partnership' }.click

  @app.user_type_page.submit_button.click

  @app.organisation_name_page.wait_for_submit_button
  
  @app.organisation_name_page.fill_partnership_name.set "Mickey Mouse"
  
  @app.organisation_name_page.submit_button.click

  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_partnership_postcode.set "BS99 9XX"
  @app.postcode_page.submit_button.click

  @app.address_page.wait_for_submit_button
  click_link 'I can’t find the address in the list'

  @app.address_page.fill_address_premises.set "1"
  @app.address_page.fill_street_address.set "Test street"
  @app.address_page.fill_address_locality.set "Testington"
  @app.address_page.fill_address_city.set "Testminster"
  @app.address_page.submit_button.click

  click_link 'Add another partner'


  @app.organisation_name_page.fill_partnership_name.set "Minnie Mouse"
  
  @app.organisation_name_page.submit_button.click


  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_partnership_postcode.set "BS1 5AH"
  @app.postcode_page.submit_button.click

#Address page - select address from post code lookup list
# @app.address_page.wait_for_submit_button
@app.address_page.wait_for_show_list
# save_and_open_page
@app.address_page.results.find(:xpath, 'option[2]').select_option
# find('#address_match_selection').find(:xpath, 'option[2]').select_option
@app.address_page.submit_button.click

@app.partnership_details_page.wait_for_submit_button
@app.partnership_details_page.submit_button.click

    # Correspondence contact name page
@app.correspondence_contact_name_page.wait_for_submit_button
@app.correspondence_contact_name_page.fill_contact_name.set "Joe Bloggs"
# fill_in('correspondence_contact_name_full_name', :with => 'Joe Bloggs')
@app.correspondence_contact_name_page.fill_contact_position.set "Project Manager"
# fill_in('correspondence_contact_name_position', :with => 'Project Mangler')
@app.correspondence_contact_name_page.submit_button.click


# Correspondence contact telephone page

@app.correspondence_contact_telephone_page.wait_for_submit_button
@app.correspondence_contact_telephone_page.fill_telephone_number.set "01234567899"
# fill_in('correspondence_contact_telephone_telephone_number', :with => '01234567899')
@app.correspondence_contact_telephone_page.submit_button.click
# click_button 'Continue'

# Correspondence contact email address page
@app.correspondence_contact_email_page.wait_for_submit_button
@app.correspondence_contact_email_page.fill_email.set "test@example.com"
@app.correspondence_contact_email_page.fill_confirm_email.set "test@example.com"
@app.correspondence_contact_email_page.submit_button.click


# # Email someone else page
@app.email_someone_else_page.wait_for_submit_button
@app.email_someone_else_page.fill_email.set "other@example.com"
@app.email_someone_else_page.fill_confirm_email.set "other@example.com"
@app.email_someone_else_page.submit_button.click

# Check your answers page

@app.check_your_answers_page.wait_for_submit_button

@app.check_your_answers_page.submit_button.click
end

Given(/^I register as a partnership with three partners$/) do
    @app.user_type_page.wait_for_submit_button
  @app.user_type_page.radio_buttons.find { |btn| btn.value == 'partnership' }.click

  @app.user_type_page.submit_button.click

  @app.organisation_name_page.wait_for_submit_button
  
  @app.organisation_name_page.fill_partnership_name.set "Mickey Mouse"
  
  @app.organisation_name_page.submit_button.click

  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_partnership_postcode.set "BS99 9XX"
  @app.postcode_page.submit_button.click

  @app.address_page.wait_for_submit_button
  click_link 'I can’t find the address in the list'

  @app.address_page.fill_address_premises.set "1"
  @app.address_page.fill_street_address.set "Test street"
  @app.address_page.fill_address_locality.set "Testington"
  @app.address_page.fill_address_city.set "Testminster"
  @app.address_page.submit_button.click

  click_link 'Add another partner'


  @app.organisation_name_page.fill_partnership_name.set "Minnie Mouse"
  
  @app.organisation_name_page.submit_button.click


  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_partnership_postcode.set "BS1 5AH"
  @app.postcode_page.submit_button.click


  @app.address_page.wait_for_show_list
  @app.address_page.results.find(:xpath, 'option[2]').select_option
  @app.address_page.submit_button.click


  click_link 'Add another partner'
  @app.organisation_name_page.fill_partnership_name.set "Daffy Duck"
  
  @app.organisation_name_page.submit_button.click


  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_partnership_postcode.set "BS1 5AH"
  @app.postcode_page.submit_button.click

#Address page - select address from post code lookup list
# @app.address_page.wait_for_submit_button
@app.address_page.wait_for_show_list
# save_and_open_page
@app.address_page.results.find(:xpath, 'option[2]').select_option
# find('#address_match_selection').find(:xpath, 'option[2]').select_option
@app.address_page.submit_button.click


end


Given(/^remove one partner$/) do
@app.partnership_details_page.wait_for_submit_button

@app.partnership_details_page.remove_links.first.click

wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
alert = wait.until { page.driver.browser.switch_to.alert }
alert.accept
@app.partnership_details_page.wait_for_submit_button
@app.partnership_details_page.submit_button.click


# Correspondence contact name page
@app.correspondence_contact_name_page.wait_for_submit_button
@app.correspondence_contact_name_page.fill_contact_name.set "Joe Bloggs"
# fill_in('correspondence_contact_name_full_name', :with => 'Joe Bloggs')
@app.correspondence_contact_name_page.fill_contact_position.set "Project Manager"
# fill_in('correspondence_contact_name_position', :with => 'Project Mangler')
@app.correspondence_contact_name_page.submit_button.click


# Correspondence contact telephone page

@app.correspondence_contact_telephone_page.wait_for_submit_button
@app.correspondence_contact_telephone_page.fill_telephone_number.set "01234567899"
# fill_in('correspondence_contact_telephone_telephone_number', :with => '01234567899')
@app.correspondence_contact_telephone_page.submit_button.click
# click_button 'Continue'

# Correspondence contact email address page
@app.correspondence_contact_email_page.wait_for_submit_button
@app.correspondence_contact_email_page.fill_email.set "test@example.com"
@app.correspondence_contact_email_page.fill_confirm_email.set "test@example.com"
@app.correspondence_contact_email_page.submit_button.click


# # Email someone else page
@app.email_someone_else_page.wait_for_submit_button
@app.email_someone_else_page.fill_email.set "other@example.com"
@app.email_someone_else_page.fill_confirm_email.set "other@example.com"
@app.email_someone_else_page.submit_button.click

# Check your answers page

@app.check_your_answers_page.wait_for_submit_button

@app.check_your_answers_page.submit_button.click
end

Given(/^remove one partner with javascript turned off$/) do
@app.partnership_details_page.wait_for_submit_button

@app.partnership_details_page.remove_links.first.click

click_button 'Delete'

@app.partnership_details_page.wait_for_submit_button
@app.partnership_details_page.submit_button.click

  # Correspondence contact name page
@app.correspondence_contact_name_page.wait_for_submit_button
@app.correspondence_contact_name_page.fill_contact_name.set "Joe Bloggs"
# fill_in('correspondence_contact_name_full_name', :with => 'Joe Bloggs')
@app.correspondence_contact_name_page.fill_contact_position.set "Project Manager"
# fill_in('correspondence_contact_name_position', :with => 'Project Mangler')
@app.correspondence_contact_name_page.submit_button.click


# Correspondence contact telephone page

@app.correspondence_contact_telephone_page.wait_for_submit_button
@app.correspondence_contact_telephone_page.fill_telephone_number.set "01234567899"
# fill_in('correspondence_contact_telephone_telephone_number', :with => '01234567899')
@app.correspondence_contact_telephone_page.submit_button.click
# click_button 'Continue'

# Correspondence contact email address page
@app.correspondence_contact_email_page.wait_for_submit_button
@app.correspondence_contact_email_page.fill_email.set "test@example.com"
@app.correspondence_contact_email_page.fill_confirm_email.set "test@example.com"
@app.correspondence_contact_email_page.submit_button.click


# # Email someone else page
@app.email_someone_else_page.wait_for_submit_button
@app.email_someone_else_page.fill_email.set "other@example.com"
@app.email_someone_else_page.fill_confirm_email.set "other@example.com"
@app.email_someone_else_page.submit_button.click

# Check your answers page

@app.check_your_answers_page.wait_for_submit_button

@app.check_your_answers_page.submit_button.click
end
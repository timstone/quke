Given(/^I register as a charity$/) do
     @app.user_type_page.wait_for_submit_button
  @app.user_type_page.radio_buttons.find { |btn| btn.value == 'other' }.click

  @app.user_type_page.submit_button.click

  @app.organisation_name_page.wait_for_submit_button
  
  @app.organisation_name_page.fill_other_name.set "Boy scouts"
  
  @app.organisation_name_page.submit_button.click

   @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_other_postcode.set "BS99 9XX"
  @app.postcode_page.submit_button.click

  @app.address_page.wait_for_submit_button
  click_link 'Enter address manually'

  @app.address_page.fill_address_premises.set "1"
  @app.address_page.fill_street_address.set "Test street"
  @app.address_page.fill_address_locality.set "Testington"
  @app.address_page.fill_address_city.set "Testminster"
  @app.address_page.submit_button.click

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
@app.correspondence_contact_email_page.fill_email.set "tim.stone.ea@gmail.com"
@app.correspondence_contact_email_page.fill_confirm_email.set "tim.stone.ea@gmail.com"
@app.correspondence_contact_email_page.submit_button.click


# # Email someone else page
@app.email_someone_else_page.wait_for_submit_button
@app.email_someone_else_page.fill_email.set "tim.stone.ea+1@gmail.com"
@app.email_someone_else_page.fill_confirm_email.set "tim.stone.ea+1@gmail.com"
@app.email_someone_else_page.submit_button.click

# Check your answers page

@app.check_your_answers_page.wait_for_submit_button

@app.check_your_answers_page.submit_button.click
end
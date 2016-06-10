Given(/^I register for a new exemption$/) do
    @app = App.new
  	@app.check_location_page.load
end

Given(/^I register exemption FRA(\d+)$/) do |arg1|
  
  @app.add_exemption_page.wait_for_submit_button

  @exemption_number = arg1

  @app.add_exemption_page.select_radio_button.find { |chk| chk.value == @exemption_number }.click

  @app.add_exemption_page.submit_button.click
  
  @app.check_exemptions_page.wait_for_submit_button

  @app.check_exemptions_page.submit_button.click

  @app.grid_reference_page.wait_for_submit_button
  @app.grid_reference_page.fill_grid_ref.set "ST 58132 72695"
  @app.grid_reference_page.fill_site_description.set "Location of activity"
  @app.grid_reference_page.submit_button.click
    

  end

Given(/^I register as a limited company$/) do
    # User type page
  @app.user_type_page.wait_for_submit_button
  @app.user_type_page.radio_buttons.find { |btn| btn.value == 'limited_company' }.click

  @app.user_type_page.submit_button.click

  # Limited company number page
  @app.limited_company_number_page.wait_for_submit_button
  @app.limited_company_number_page.fill_number.set "12345678"
  @app.limited_company_number_page.submit_button.click
  # save_and_open_page
  #Organisation name page
  @app.organisation_name_page.wait_for_submit_button
  
  @app.organisation_name_page.fill_limited_company_name.set "Too unlimited"
  
  @app.organisation_name_page.submit_button.click

  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_limited_company_postcode.set "BS1 5AH"
  @app.postcode_page.submit_button.click

  # Address page - select address from post code lookup list
  @app.address_page.wait_for_submit_button
  @app.address_page.wait_for_show_list
 
  @app.address_page.results.find(:xpath, 'option[2]').select_option
  find('#address_match_selection').find(:xpath, 'option[2]').select_option
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
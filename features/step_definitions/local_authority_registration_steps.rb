Given(/^I register an exemption for a local authority$/) do
  @app = App.new
  @app.check_location_page.load

  # @app.check_location_page.radio_buttons.each {|btn| puts btn.value}
  @app.check_location_page.radio_buttons.find { |btn| btn.value == 'yes' }.click
  @app.check_location_page.submit_button.click

  @app.add_exemption_page.wait_for_check_boxes
  
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == '4' }.click

  @app.add_exemption_page.submit_button.click
  # sleep(1)
  
  @app.check_exemptions_page.wait_for_submit_button

  expect(page).to have_content 'Footbridge over a main river not more than 8 metres wide from bank to bank'
  
  @app.check_exemptions_page.submit_button.click


# Grid reference page
  @app.grid_reference_page.wait_for_submit_button
  @app.grid_reference_page.fill_grid_ref.set "ST 58132 72695"
  # fill_in('grid_reference_grid_reference', :with => 'ST 58132 72695')
  @app.grid_reference_page.submit_button.click
  # click_button 'Continue'
  
  
# User type page
@app.user_type_page.wait_for_submit_button
@app.user_type_page.radio_buttons.find { |btn| btn.value == 'local_authority' }.click
# choose ('user_type_org_type_local_authority')
# click_button 'Continue'
@app.user_type_page.submit_button.click

#Organisation name page
@app.organisation_name_page.wait_for_submit_button
# fill_in('local_authority_name', :with => 'Testminster council')
@app.organisation_name_page.fill_local_authority_name.set "Testminster council"
# click_button 'Continue'
@app.organisation_name_page.submit_button.click

#Address page - post code lookup
@app.address_page.wait_for_submit_button
@app.address_page.enter_postcode.set "BS1 5AH"
@app.address_page.submit_button.click

#Address page - select address from post code lookup list
@app.address_page.wait_for_submit_button
@app.address_page.select_option_address_index(2)
@app.address_page.submit_button.click

# click_button 'Continue'

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
@app.correspondence_contact_email_page.fill_contact_email.set "test@example.com"
@app.correspondence_contact_email_page.fill_confirm_contact_email.set "test@example.com"
@app.correspondence_contact_email_page.submit_button.click


# Correspondence contact address page
@app.correspondence_contact_address_page.wait_for_submit_button
@app.correspondence_contact_address_page.submit_button.click

# Correspondence contact post code page
click_button 'Continue'

# Email someone else page
click_button 'Continue'

# Check your answers page
click_button 'Continue'

# Declaration page
click_button 'Continue'
end

When(/^I confirm my registration$/) do
  # Confirmation page
  click_button 'Continue'
end

Then(/^I will be informed that my application has been received$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I register multiple exemptions for a local authority$/) do
  @app = App.new
  @app.check_location_page.load

  # @app.check_location_page.radio_buttons.each {|btn| puts btn.value}
  @app.check_location_page.radio_buttons.find { |btn| btn.value == 'yes' }.click
  @app.check_location_page.submit_button.click

  @app.add_exemption_page.wait_for_check_boxes
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == '1' }.click
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == '4' }.click
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == '20' }.click
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == '11' }.click

  @app.add_exemption_page.submit_button.click
  
  @app.check_exemptions_page.wait_for_submit_button

  
  expect(page).to have_content 'Electrical cable service crossing a main river'
  expect(page).to have_content 'FRA2'
  expect(page).to have_content 'Footbridge over a main river not more than 8 metres wide from bank to bank'
  expect(page).to have_content 'FRA5'
  expect(page).to have_content 'Outfall pipes less than 300mm diameter through a headwall'
  expect(page).to have_content 'FRA12'
  expect(page).to have_content 'Removing silt and sand from bridge arches and any material from existing culverts'
  expect(page).to have_content 'FRA21'

  # save_and_open_page

end

Given(/^I remove my chosen exemptions$/) do
  # # @check_exemptions_page.remove_exemption_link.click_link
  # # click_link('/fre/enrollments//[a-zA-Z0-9]{24}//exemptions/1'')
  # # find("href").text.should match(\/fre/enrollments/\[a-zA-Z0-9]{24}//exemptions/1\).click
  # find("href[src$='exemptions/1']")
  # # find("img[src$='https://www.example.com/image']")

  # @app.check_exemptions_page.click_review_link_by_state(1)
  @app.check_exemptions_page.remove_link.click


end

Then(/^I will be asked to select an exemption activity$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

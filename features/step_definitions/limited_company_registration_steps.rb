Given(/^I register for a new exemption$/) do
    @app = App.new
  	@app.check_location_page.load
end

Given(/^I register exemption FRA(\d+)$/) do |arg1|
  
  @app.add_exemption_page.wait_for_check_boxes
save_and_open_page
  @exemption_number == arg1

  puts @exemption_number
  
  @app.add_exemption_page.check_boxes.find { |chk| chk.value == @exemption_number }.click

  @app.add_exemption_page.submit_button.click
  
  @app.check_exemptions_page.wait_for_submit_button

  @app.check_exemptions_page.submit_button.click

  @app.grid_reference_page.wait_for_submit_button
  @app.grid_reference_page.fill_grid_ref.set "ST 58132 72695"
  @app.grid_reference_page.fill_site_description.set "Location of activity"
  @app.grid_reference_page.submit_button.click
  
  # Grid reference page
  @app.grid_reference_page.wait_for_submit_button
  @app.grid_reference_page.fill_grid_ref.set "ST 58132 72695"
  @app.grid_reference_page.fill_site_description.set "Location of activity"
  # fill_in('grid_reference_grid_reference', :with => 'ST 58132 72695')
  @app.grid_reference_page.submit_button.click
  # click_button 'Continue'
  
  
  # User type page
  @app.user_type_page.wait_for_submit_button
  @app.user_type_page.radio_buttons.find { |btn| btn.value == 'limited_company' }.click

  @app.user_type_page.submit_button.click

  #Organisation name page
  # @app.organisation_name_page.wait_for_submit_button
  
  # @app.organisation_name_page.fill_local_authority_name.set "Testminster council"
  
  # @app.organisation_name_page.submit_button.click

  #Address page - post code lookup
  # @app.postcode_page.wait_for_submit_button
  # @app.postcode_page.enter_postcode.set "BS1 5AH"
  # @app.postcode_page.submit_button.click

  #Address page - select address from post code lookup list
  # @app.address_page.wait_for_submit_button
  # @app.address_page.wait_for_show_list
 
  # @app.address_page.results.find(:xpath, 'option[2]').select_option
  # find('#address_match_selection').find(:xpath, 'option[2]').select_option
  # @app.address_page.submit_button.click
  end

Given(/^I register as a limited company$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
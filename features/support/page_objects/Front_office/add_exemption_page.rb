# Add exemption page
class AddExemptionPage < SitePrism::Page
	elements :select_radio_button, "input[name='add_exemptions[exemption_ids]']"
	elements :exemption_label, "div[label='check box']"
  	element :submit_button, "input[name='commit']"
  	# to do add method to check for exemption number

end

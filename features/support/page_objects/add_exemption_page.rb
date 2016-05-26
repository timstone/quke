# Add exemption page
class AddExemptionPage < SitePrism::Page
	elements :check_boxes, "input[name='add_exemptions[exemption_ids][]']"
	elements :exemption_label, "div[label='check box']"
  	element :submit_button, "input[name='commit']"
end

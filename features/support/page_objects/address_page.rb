# Address page
class AddressPage < SitePrism::Page
    element :show_list, "input[id='address_match_selection']"
  	element :choose_list, "input[id='ENVIRONMENT AGENCY, HORIZON HOUSE, DEANERY ROAD, BRISTOL, BS1 5AH']"
  	element :submit_button, "input[name='commit']"
end
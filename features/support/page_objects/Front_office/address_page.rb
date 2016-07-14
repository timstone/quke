# Address page
class AddressPage < SitePrism::Page
    element :show_list, "input[id='address_match_selection']"
    element :results, "#address_match_selection"
  	element :choose_list, "input[id='ENVIRONMENT AGENCY, HORIZON HOUSE, DEANERY ROAD, BRISTOL, BS1 5AH']"
  	element :submit_button, "input[name='commit']"
  	element :fill_address_premises, "input[id='address_premises']"
  	element :fill_street_address, "input[id='address_street_address']"
  	element :fill_address_locality, "input[id='address_locality']"
  	element :fill_address_city, "input[id='address_city']"
  	

end
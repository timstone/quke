# Address page
class AddressPage < SitePrism::Page
  element :enter_postcode, "input[id='local_authority_postcode_postcode']"
  element :submit_button, "input[name='commit']"
  element :address_list, "input[id='address_match_selection']"
end


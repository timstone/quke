# Address page
class PostCodePage < SitePrism::Page
  element :enter_postcode, "input[id='local_authority_postcode_postcode']"
  element :submit_button, "input[name='commit']"

end


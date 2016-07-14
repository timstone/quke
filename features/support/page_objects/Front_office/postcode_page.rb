# Address page
class PostCodePage < SitePrism::Page
  element :enter_postcode, "input[id='local_authority_postcode_postcode']"
  element :enter_limited_company_postcode, "input[id='limited_company_postcode_postcode']"
  element :enter_llp_postcode, "input[id='limited_liability_partnership_postcode_postcode']"
  element :enter_individual_postcode, "input[id='individual_postcode_postcode']"
  element :enter_other_postcode, "input[id='other_postcode_postcode']"
  element :enter_partnership_postcode, "input[id='partnership_postcode_postcode']"
  element :submit_button, "input[name='commit']"

  def PostCodePageSelectAddressFromPostcode(postcode: 'BS1 5AH')
  @app.postcode_page.wait_for_submit_button
  @app.postcode_page.enter_postcode.set with: postcode
  @app.postcode_page.submit_button.click
  end

  end


# Organisation name page
class OrganisationNamePage < SitePrism::Page
  element :fill_local_authority_name, "input[id='local_authority_name']"
  element :fill_limited_company_name, "input[id='limited_company_name_name']"
  element :fill_llp_company_name, "input[id='limited_liability_partnership_name_name']"
  element :fill_other_name, "input[id='other_name']"
  element :fill_individual_name, "input[id='individual_name_name']"
  element :submit_button, "input[name='commit']"
end
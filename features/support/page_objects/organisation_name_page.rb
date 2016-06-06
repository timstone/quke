# Organisation name page
class OrganisationNamePage < SitePrism::Page
  element :fill_local_authority_name, "input[id='local_authority_name']"
  element :fill_limited_company_name, "input[id='limited_company_name_name']"
  element :submit_button, "input[name='commit']"
end
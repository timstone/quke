# Limited Company number page
class LimitedCompanyNumberPage < SitePrism::Page
	element :fill_number, "input[id='limited_company_number_registration_number']"
	element :fill_llp_number, "input[id='limited_liability_partnership_number_registration_number']"
  	element :submit_button, "input[name='commit']"
end
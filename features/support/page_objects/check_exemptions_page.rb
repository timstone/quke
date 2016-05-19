# Check exemptions page
class CheckExemptionsPage < SitePrism::Page
  element :add_another_exemption, "input[name='Add another exemption']"
  element :submit_button, "input[name='commit']"
 

  def click_review_link_by_state(state)
    links = page.find_all(:xpath, "//a[contains(@href, '\/fre/enrollments/\[a-zA-Z0-9]{24}/exemptions/\#{state}')]")
    expect(links.size).to be >= 1
    links.first.click
    end
    
end
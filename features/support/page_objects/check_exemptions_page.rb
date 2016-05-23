# Check exemptions page
class CheckExemptionsPage < SitePrism::Page
  element :add_another_exemption, "input[name='Add another exemption']"
  element :submit_button, "input[name='commit']"
  # element :remove_link, "input[name='Remove exemption FRA2']"
  # Finds all exemptions listed
  elements :remove_links, "a[data-method='delete']"
    
end

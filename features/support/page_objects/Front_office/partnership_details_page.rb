# Partnership page
class PartnershipPage < SitePrism::Page
  	element  :submit_button, "input[name='commit']"
  	elements :remove_links, "a[data-method='delete']"
end

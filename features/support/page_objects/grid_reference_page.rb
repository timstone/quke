# Grid reference page
class GridReferencePage < SitePrism::Page
  element :fill_grid_ref, "input[id='grid_reference_grid_reference']"
  element :fill_site_description, "textarea[name='grid_reference[description]']"
  element  :fill_dredging_length, "input[id='grid_reference_dredging_length']"
  element :submit_button, "input[name='commit']"
end
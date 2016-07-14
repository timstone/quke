# Check location page
class CheckLocationPage < SitePrism::Page
<<<<<<< HEAD
  set_url 'https://frae-qa.envage.co.uk/enrollments/new'

  elements :radio_buttons, "input[name='check_location[location_check]']"
  element  :submit_button, "input[name='commit']"
=======
  	#set_url 'https://floodrisk-fo-qa.herokuapp.com/fre/enrollments/new'
	set_url 'https://frae-qa.envage.co.uk/fre/enrollments/new'
  	elements :radio_buttons, "input[name='check_location[location_check]']"
  	element  :submit_button, "input[name='commit']"
>>>>>>> feature/partners-registration
end

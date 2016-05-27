# Email someone else email page
class EmailSomeoneElsePage < SitePrism::Page
  element :fill_email, "input[id='email_someone_else_email_address']"
  element :fill_confirm_email, "input[id='email_someone_else_email_address_confirmation']"
  element :submit_button, "input[name='commit']"
end
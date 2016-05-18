# Correspondence contact email page
class CorrespondenceContactEmailPage < SitePrism::Page
  element :fill_contact_email, "input[id='correspondence_contact_email_email_address']"
  element :fill_confirm_contact_email, "input[name='correspondence_contact_email_email_address_confirmation']"
  element :submit_button, "input[name='commit']"
end
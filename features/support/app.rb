# Represents all pages in the application. Was created to avoid needing to
# create individual instances of each page throughout the steps.
# https://github.com/natritmeyer/site_prism#epilogue
class App
  def check_location_page
    CheckLocationPage.new
  end

  def add_exemption_page
    AddExemptionPage.new
  end

  def check_exemptions_page
  	CheckExemptionsPage.new
  end

  def grid_reference_page
 	GridReferencePage.new
  end

  def user_type_page
  	UserTypePage.new
  end

  def limited_company_number_page
    LimitedCompanyNumberPage.new
  end
  
  def organisation_name_page
  	OrganisationNamePage.new
  end

  def partnership_details_page
    PartnershipPage.new
  end

  def correspondence_contact_name_page
    CorrespondenceContactNamePage.new
  end

  def correspondence_contact_telephone_page
    CorrespondenceContactTelephonePage.new
  end
  
  def correspondence_contact_email_page
    CorrespondenceContactEmailPage.new
  end

  def email_someone_else_page
    EmailSomeoneElsePage.new
  end

  def correspondence_contact_address_page
    CorrespondenceContactAddressPage.new
  end

  def postcode_page
    PostCodePage.new
  end

  def address_page
    AddressPage.new
  end

  def check_your_answers_page
    CheckYourAnswersPage.new
  end
  
  def confirmation_page
    ConfirmationPage.new
  end
  
  def declaration_page
    DeclarationPage.new
  end
  

  
end

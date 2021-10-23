<<<<<<< HEAD
# rspec ./spec/feature/adding_user_integration_spec.rb

require 'rails_helper'

RSpec.describe 'Adding a person', type: :feature do
  scenario 'success inputs' do
    Person.create!(first_name: 'Nathan_Testing_Account', last_name: 'Reddy', class_year: '2022', email: 'nathan.reddy@tamu.edu', phone_number: '8889991000')
    
    visit people_url
    expect(page).to have_content('Reddy')
  end
=======
# rspec ./spec/feature/adding_user_integration_spec.rb

require 'rails_helper'

def login
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit students_url
  click_link 'Sign in with Google'
end

RSpec.describe 'Adding a person', type: :feature do
  scenario 'success inputs' do
    login()
    click_on 'Add Person'
    #puts page.html
    fill_in 'person_first_name', with: 'Nathan'
    fill_in 'person_last_name', with: 'Reddy'
    fill_in 'person_class_year', with: '2022'
    fill_in 'person_email', with: 'nathan.reddy@tamu.edu'
    fill_in 'person_phone_number', with: '8889991000'
    click_on 'Create Person'
    click_on 'Back'
    #puts page.html
    expect(page).to have_content('Reddy')
    Rails.application.env_config["omniauth.auth"] = nil
    OmniAuth.config.mock_auth[:google] = nil
  end
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
end
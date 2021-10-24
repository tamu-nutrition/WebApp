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
end
# rspec ./spec/feature/removing_user_integration_spec.rb

require 'rails_helper'

# TODO: This test will not work because of the Google Auth firewall.
# A future ticket will need to be added allowing for Google Auth testing token integration.

RSpec.describe 'Deleting a person', type: :feature do
  scenario 'success inputs' do
    Person.create!(first_name: 'Nathan_Testing_Account', last_name: 'Reddy', class_year: '2022', email: 'nathan.reddy@tamu.edu', phone_number: '8889991000')
    
    # TODO: Will not work because admin access is required
    visit people_url
    
    expect(page).to have_content('Nathan_Testing_Account')
    click_on 'Destroy'
    expect(page).not_to have_content('Nathan_Testing_Account')
  end
end
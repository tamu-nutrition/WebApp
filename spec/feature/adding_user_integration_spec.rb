# rspec ./spec/feature/adding_user_integration_spec.rb

require 'rails_helper'

RSpec.describe 'Adding a person', type: :feature do
  scenario 'success inputs' do
    Person.create!(first_name: 'Nathan_Testing_Account', last_name: 'Reddy', class_year: '2022', email: 'nathan.reddy@tamu.edu', phone_number: '8889991000')
    
    visit people_url
  end
end
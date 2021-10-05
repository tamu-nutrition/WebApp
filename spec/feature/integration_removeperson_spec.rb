# rspec ./spec/feature/integration_removeperson_spec.rb

require 'rails_helper'

RSpec.describe 'Removing a person', type: :feature do
  scenario 'success inputs' do
    Person.create!(first_name: 'Nima_Testing_Account', last_name: 'Ghadiri', class_year: '2022', email: 'nimasg3@tamu.edu', phone_number: '8889991000')
    visit people_url
    expect(page).to have_content('Ghadiri')
    click_on 'Remove'
    expect(page).not_to have_content('Ghadiri')

  end
end
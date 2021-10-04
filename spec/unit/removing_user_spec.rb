# rails spec ./spec/unit/removing_user_spec.rb
require 'rails_helper'

RSpec.describe Person, type: :model do
  before(:all) do
    @person = Person.create(first_name: 'Nathan_Testing_Account_Unit_Test', last_name: 'Reddy', class_year: '2022', email: 'nathan.reddy@tamu.edu', phone_number: '8889991000')
  end
  
  it 'is valid with valid attributes' do
    expect(@person).to be_valid
  end

  it 'is deleted properly' do
    @person.destroy
    expect(Person.find_by(first_name: "Nathan_Testing_Account_Unit_Test")).to be_nil
  end
end

# rails spec ./spec/unit/adding_user_spec.rb
require 'rails_helper'

RSpec.describe Person, type: :model do
  before(:all) do
    @person = Person.create(first_name: 'Nathan_Testing_Account_Unit_Test', last_name: 'Reddy', class_year: '2022', email: 'nathan.reddy@tamu.edu', phone_number: '8889991000')
  end
  
  it 'is valid with valid attributes' do
    expect(@person).to be_valid
  end

  it 'has no first name' do
    @person.first_name = nil
    expect(@person).not_to be_valid
  end

  it 'has no last name' do
    @person.last_name = nil
    expect(@person).not_to be_valid
  end

  it 'has no class year' do
    @person.class_year = nil
    expect(@person).not_to be_valid
  end
  
  it 'has no email' do
    @person.email = nil
    expect(@person).not_to be_valid
  end

  it 'has no phone number' do
    @person.phone_number = nil
    expect(@person).not_to be_valid
  end

end

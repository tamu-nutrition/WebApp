class Person < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :class_year, presence: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, numericality: true

end

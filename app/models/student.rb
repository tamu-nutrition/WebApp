class Student < ApplicationRecord
    has_many :requests, dependent: :destroy, foreign_key: :UIN
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :UIN, presence: true
end

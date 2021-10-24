class Student < ApplicationRecord
    has_many :requests, foreign_key: :UIN
end

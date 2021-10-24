class Request < ApplicationRecord
    belongs_to :student, foreign_key: :UIN
end

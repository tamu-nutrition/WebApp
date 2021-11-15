class OtherEvent < ApplicationRecord
    validates :point_worth, presence: true
    validates :event_type, presence: true
    validates :number_participation, presence: true
    validates :name, presence: true, uniqueness: true
end

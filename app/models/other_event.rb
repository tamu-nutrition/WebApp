class OtherEvent < ApplicationRecord

    validates :event_id, presence: true, uniqueness: true
    validates :point_worth, presence: true
    validates :event_type, presence: true
    validates :number_participation, presence: true
end

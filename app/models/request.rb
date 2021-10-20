class Request < ApplicationRecord
    validates :event_id, presence: true, numericality: true
    validates :uin, presence: true, numericality: true
    validates :date, presence: true
    validates :points, presence: true, numericality: true
    validates :approved, presence: true
end
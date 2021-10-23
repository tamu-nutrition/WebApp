<<<<<<< HEAD
class Request < ApplicationRecord
    validates :event_id, presence: true, numericality: true
    validates :uin, presence: true, numericality: true
    validates :date, presence: true
    validates :points, presence: true, numericality: true
end
=======
class Request < ApplicationRecord
end
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21

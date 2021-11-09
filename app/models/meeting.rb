class Meeting < ApplicationRecord
    validates :meeting_id, presence:true

    has_one_attached :qr_code

    include Rails.application.routes.url_helpers

    after_create :generate_qr

    def generate_qr
        GenerateQr.call(self)
    end
    
    def to_s
        title
    end
end

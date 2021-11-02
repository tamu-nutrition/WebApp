class Post < ApplicationRecord
    validates :title, presence: true

    has_one_attached :qr_code
    after_create :generate_qr
    def generate_qr
        url_for(controller: 'posts', 
        action: 'show',
        id: self.id, 
        only_path: false,
        host: 'localhost'
        source: 'from_qr'
        )
    end

    def to_s
        title
    end
end
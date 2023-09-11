class Incident < ApplicationRecord
    belongs_to :user



    validates :subject, presence: true
    validates :description, presence: true, length: { maximum: 1000 }
    validates :location, presence: true
end

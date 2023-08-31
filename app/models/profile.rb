class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true, message: "must be a valid phone number" }
  validates :national_id, presence: true, uniqueness: true, numericality: { only_integer: true, message: "must be a valid National ID Number" }
  
end

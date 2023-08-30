class Profile < ApplicationRecord
  belongs_to :user

  validates :phone_number, presence: true, numericality: { only_integer: true }
  validates :national_id, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :first_name, :last_name, presence: true
end

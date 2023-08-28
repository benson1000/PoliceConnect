class Contact < ActiveRecord::Base
  validates :name, length: { minimum:5,  maximum:200 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :subject, presence: true
  validates :message, presence: true, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
end
class Contact < ActiveRecord::Base
    attr_accessor :name, :email, :subject, :message
    validates :name, length: { minimum:3,  maximum:200 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false, message: "Email MUST be Unique." }
    validates :subject, presence: true
    validates :message, presence: true, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
end
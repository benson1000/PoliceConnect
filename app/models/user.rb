class User < ApplicationRecord
  has_one :profile
  has_many :incidents
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
 
  validates :password, format: {
    with: /\A(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}\z/m,
    message: "must have at least one uppercase letter, one lowercase letter, one numeric character, and one special character."
  }
end

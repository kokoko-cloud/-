class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    
    validates :name,
            presence: true,
            length: { in: 1..15 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, , format: { with: VALID_EMAIL_REGEX }}
    
    has_secure_password
    VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
    valedates :password, length: { in: 8..32 }
    format: { with: VALID_PASSWORD_REGEX }
      
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,16}+\z/.freeze
    format: { with: VALID_PASSWORD_REGEX }
    has_many :topics
end

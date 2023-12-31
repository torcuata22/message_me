class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..25 }

  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end

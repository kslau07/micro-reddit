class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 10 } # do we need presence:true?

  has_many :posts
  has_many :comments
end

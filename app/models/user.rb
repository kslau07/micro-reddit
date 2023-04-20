class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, length: { minimum: 3 }, presence: true
  validates :email,
            format: { with: /\A\S+@\S+\.\S+\Z/, message: 'must be a valid format, eg. bob@example.com.' },
            presence: true
  validates :password, length: { in: 6..16 }, presence: true
end

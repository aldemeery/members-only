class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  validates :name, presence: true, length: { maximum: 30 }
  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end

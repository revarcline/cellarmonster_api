class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  validates :password, presence: true, length: { minimum: 5, maximum: 120 }, on: :create
  validates :password, length: { minimum: 5, maximum: 120 }, on: :update, allow_blank: true
  has_many :orders, dependent: :destroy
end

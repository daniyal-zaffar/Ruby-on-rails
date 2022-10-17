class User < ApplicationRecord
  attr_accessor :password, :password_confirmation

  has_many :appointments
  has_many :doctors, through: :appointments, dependent: :destroy
  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  validates :name, :email, presence: true
end

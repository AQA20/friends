require_relative './validators/email'
require_relative './validators/phone'

class Friend < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true, length: { maximum: 36 }
  validates :last_name, presence: true, length: { maximum: 36 }
  validates :email, presence: true, uniqueness: true, email: true
  validates :phone, presence: true, length: { is: 10 }, uniqueness: true, phone: true
  validates :photo, presence: true, uniqueness: true
  validates :twitter, length: { maximum: 100 }
end

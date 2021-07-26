class Patient < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :appointments
  has_many :doctors, :through => :appointments
end

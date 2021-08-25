class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :coin
  has_many :measurements, dependent: :destroy
end

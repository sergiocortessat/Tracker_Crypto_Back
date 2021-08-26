class Goal < ApplicationRecord
  belongs_to :user, foreign_key: 'sub', primary_key: 'sub', optional: true
  belongs_to :coin
  has_many :measurements, dependent: :destroy
end

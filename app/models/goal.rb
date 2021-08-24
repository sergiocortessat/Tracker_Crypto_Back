class Goal < ApplicationRecord
  belongs_to :user, foreign_key: 'sub', primary_key: 'sub', optional: true
  has_many :measurements, foreign_key: 'crypto_name', primary_key: 'crypto_name'
end

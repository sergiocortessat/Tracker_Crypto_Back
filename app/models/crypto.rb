class Crypto < ApplicationRecord
  belongs_to :user, foreign_key: 'sub', primary_key: 'sub', optional: true
  # validates :name, presence: true, on: :create
end

class User < ApplicationRecord
  has_many :goals, foreign_key: 'sub', primary_key: 'sub'
  has_many :coins, through: :goals
  validates :sub, :email, presence: true,
                          uniqueness: { case_sensitive: false }
  validates :name, presence: true
end

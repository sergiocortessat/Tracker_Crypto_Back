class User < ApplicationRecord
  has_many :goals
  has_many :coins, through: :goals
  validates :sub, :email, presence: true,
                          uniqueness: { case_sensitive: false }
  validates :name, presence: true
end

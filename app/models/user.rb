class User < ApplicationRecord
  has_many :cryptos, foreign_key: 'sub', primary_key: 'sub'

  validates_presence_of :sub, :email, :name, :given_name, :family_name, :picture
  validates_uniqueness_of :sub, :email
end

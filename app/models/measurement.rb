class Measurement < ApplicationRecord
  belongs_to :goal, foreign_key: 'crypto_name', primary_key: 'crypto_name', optional: true

end

class Day < ApplicationRecord
  belongs_to :season
  has_many :readings
end

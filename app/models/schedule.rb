class Schedule < ApplicationRecord
  belongs_to :lectionary
  has_many :seasons
end

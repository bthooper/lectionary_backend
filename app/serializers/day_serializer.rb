class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :startDate, :endDate
  belongs_to :season
  has_many :readings
end

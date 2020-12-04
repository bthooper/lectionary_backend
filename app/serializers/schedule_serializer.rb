class ScheduleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
  belongs_to :lectionary
  has_many :seasons
end

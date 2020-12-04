class LectionarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :owner, :license
  has_many :schedules
end

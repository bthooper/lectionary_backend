class SeasonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description  
  belongs_to :schedule
  has_many :days
end

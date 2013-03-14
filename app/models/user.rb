class User
  include Mongoid::Document
  has_many :schedules
  field :name, type: String
  field :time_zone, :type => String, :default => "GMT"
  belongs_to :organization
end

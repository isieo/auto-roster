class Organization
  include Mongoid::Document
  embeds_many :users
  has_many :schedules
  field :name, type: String
  field :roles, type: Array
  field :event_requirments, type: Array

end

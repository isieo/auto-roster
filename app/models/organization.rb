class Organization
  include Mongoid::Document
  has_and_belongs_to_many :users
  field :name, type: String
  field :roles, type: Array
  field :admins, type: Array, default: []
  field :event_requirments, type: Array

  embeds_many :user_roles
end

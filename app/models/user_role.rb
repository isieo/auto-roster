class UserRole
  include Mongoid::Document
  embedded_in :organization
  belongs_to :user
  field :name, type: String
  validates_uniqueness_of :name, scope: :user_id
end

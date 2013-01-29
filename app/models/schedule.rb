class Schedule
  include Mongoid::Document
  belongs_to :user
  belongs_to :organization
  field :start_time, type: Time
  field :available_for, type: Integer, default: 1
end

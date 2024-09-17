class Appointment < ActiveRecord::Base
  has_one :note

  # Schema:
  #
  # id: number (primary key)
  # start_at: timestamp
  # end_at: timestamp
end
class Attendance < ApplicationRecord
  # has_many :administrators, foreign_key: :administrator_id, class_name: 'User'
  belongs_to :attendee, class_name: 'User'
  belongs_to :event
end

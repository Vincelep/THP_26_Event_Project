class Attendance < ApplicationRecord
  after_create :welcome_send

  # has_many :administrators, foreign_key: :administrator_id, class_name: 'User'
  belongs_to :attendee, class_name: 'User'
  belongs_to :event


    def welcome_send
      UserMailer.welcome_email().deliver_now
    end
end

class StudentLecturerAppreciate < ApplicationRecord
  belongs_to :student
  belongs_to :lecturer
end

class StudentPartnerAppreciate < ApplicationRecord
  belongs_to :student
  belongs_to :partner
end

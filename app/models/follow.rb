class Follow < ApplicationRecord
  belongs_to :partner
  belongs_to :student
end

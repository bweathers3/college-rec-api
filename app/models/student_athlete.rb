class StudentAthlete < ApplicationRecord
  has_one :profile
  has_one :academic
end

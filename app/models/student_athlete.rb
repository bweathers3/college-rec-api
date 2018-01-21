class StudentAthlete < ApplicationRecord
  has_one :profile
  has_one :academic
  has_one :athletic
end

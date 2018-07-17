class StudentAthlete < ApplicationRecord
  belongs_to :user
  has_one :profile
  has_one :academic
  has_one :athletic
end

class StudentAthleteSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :middleName, :lastName, :birthdate, :gender, :intended_enrollment_year
  belongs_to :user
end

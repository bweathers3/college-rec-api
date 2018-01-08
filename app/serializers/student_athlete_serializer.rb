class StudentAthleteSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :middleName, :lastName, :birthdate, :gender
end

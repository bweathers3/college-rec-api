class AcademicSerializer < ActiveModel::Serializer
  attributes :id, :student_athlete_id, :schoolName, :counselorName, :counselorEmail, :counselorPhone, :gpa, :classRank, :sat, :act
  belongs_to :student_athlete
end

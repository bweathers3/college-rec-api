class AcademicSerializer < ActiveModel::Serializer
  attributes :schoolName, :counselorName, :counselorEmail, :counselorPhone, :gpa, :classRank, :sat, :act
end

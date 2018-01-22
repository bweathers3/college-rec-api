class AthleticSerializer < ActiveModel::Serializer
  attributes :id, :student_athlete_id, :stat1, :stat2, :stat3, :stat4, :stat5, :stat6, :stat7, :stat8, :stat9, :stat10, :stat11, :stat12
  belongs_to :student_athlete
end

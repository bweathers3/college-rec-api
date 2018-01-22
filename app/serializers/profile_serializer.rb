class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :student_athlete_id, :street, :city, :state, :zip, :country, :email, :phone, :siblings
  belongs_to :student_athlete
end

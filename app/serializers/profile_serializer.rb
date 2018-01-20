class ProfileSerializer < ActiveModel::Serializer
  attributes :student_athlete_id, :street, :city, :state, :zip, :country, :email, :phone, :siblings
end

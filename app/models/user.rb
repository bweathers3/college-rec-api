class User < ApplicationRecord
  has_many :student_athletes
  has_one :profile, through: :student_athletes
  has_one :academic, through: :student_athletes
  has_one :athletic, through: :student_athletes
end

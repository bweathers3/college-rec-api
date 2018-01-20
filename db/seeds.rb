
=begin
require 'random_data'
 5.times do
   StudentAthlete.create!(
     firstName:  RandomData.random_word,
     middleName:   RandomData.random_word,
     lastName:  RandomData.random_word
   )
end
=end

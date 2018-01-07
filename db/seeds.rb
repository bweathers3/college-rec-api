require 'random_data'

 5.times do
 # #1
   StudentAthlete.create!(
 # #2
     firstName:  RandomData.random_word,
     middleName:   RandomData.random_word,
     lastName:  RandomData.random_word
   )
 end

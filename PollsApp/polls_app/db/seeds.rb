# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  User.create!(username: "User#{n+1}")
end

Poll.create!(author_id: 1, title: 'my first poll')
Poll.create!(author_id: 2, title: 'my second poll')

Question.create!(poll_id: 1, text: "abc?")
Question.create!(poll_id: 2, text: "efg")

AnswerChoice.create!(choice: 1, text: "alphabetic", question_id: 1)
AnswerChoice.create!(choice: 2, text: "numeric", question_id: 1)

Response.create!(author_id: 3, question_id: 1, answer_id: 2)

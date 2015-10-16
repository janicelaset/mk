# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Clue.create([{ description: 'Clue 1', question: 'Question 1', answer: 'answer1' },
               { description: 'Clue 2', question: 'Question 2', answer: 'answer2'  },
               { description: 'Clue 3', question: 'Question 2', answer: 'answer3'  },
               { description: 'Clue 4', question: 'Question 2', answer: 'answer4'  },
               { description: 'Clue 5', question: 'Question 2', answer: 'answer5'  }])

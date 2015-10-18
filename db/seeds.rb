# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Location.create(where: "Where is it?", answer: "pioneer tower", clue_id: 1)

  Clue.create([
    { description: 'On these grounds is where I spend most of my days.',
      question: "Pop quiz, Aliens invade earth, there's one cheesecake slice left, there's a zombie hundred feet away, what do you do?",
      answer: 'shoot the hostage',
      display: false,
      location: Location.first},
    { description: "After the sun crosses the meridian, I take this path to health.",
      question: "What's my favorite?",
      answer: 'smiling',
      display: false },
    { description: "I just wanted to tell you I love you and I think we're taylor made for each other.",
      question: "Who is the phenomenon where one happens upon some obscure piece of information and soon afterwards encounters the same subject again?",
      answer: 'david hasselhoff',
      display: false },
    { description: "You won't be the first to explore this area, but someone was. This accomplishment may tower over others.",
      question: 'An invisible space that could only be visited on the phone.',
      answer: 'third space',
      display: false },
    { description: "Some infinities are bigger than other infinities. Look at it from a different perspective, you'll see three infinities are also bigger than one.",
      question: "Do you know my most preferred color?",
      answer: 'yes',
      display: false }])

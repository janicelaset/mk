class Location < ActiveRecord::Base
  belongs_to :clue

  def self.correct
    result = false
    location = Location.first

    if (location.guess != nil)
      guess = location.guess.downcase
    end
    if (guess == location.answer)
      result = true
    end
    result
  end
end

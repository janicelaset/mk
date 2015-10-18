class Clue < ActiveRecord::Base
  has_one :location

  def self.complete
    result = true
    Clue.all.each do |clue|
      if (clue.display == false)
        result = false
      end
      return result
    end
  end
end

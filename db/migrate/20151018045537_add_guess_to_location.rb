class AddGuessToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :guess, :string
  end
end

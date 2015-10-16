class AddDisplayClue < ActiveRecord::Migration
  def change
    add_column :clues, :display, :boolean
  end
end

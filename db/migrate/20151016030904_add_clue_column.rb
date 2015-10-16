class AddClueColumn < ActiveRecord::Migration
  def change
    add_column :clues, :description, :string
  end
end

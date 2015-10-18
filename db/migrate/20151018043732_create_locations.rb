class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :where, :string
      t.column :answer, :string
      t.column :clue_id, :integer

      t.timestamps null: false
    end
  end
end

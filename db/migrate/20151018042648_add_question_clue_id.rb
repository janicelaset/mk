class AddQuestionClueId < ActiveRecord::Migration
  def change
    add_column :questions, :clue_id, :integer
  end
end

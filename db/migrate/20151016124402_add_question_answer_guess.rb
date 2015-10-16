class AddQuestionAnswerGuess < ActiveRecord::Migration
  def change
    add_column :clues, :question, :string
    add_column :clues, :answer, :string
    add_column :clues, :guess, :string
  end
end

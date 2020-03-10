class AddQuizToQuizBanks < ActiveRecord::Migration[5.2]
  def change
    add_reference :quiz_banks, :quiz, foreign_key: true
  end
end

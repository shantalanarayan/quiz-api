class CreateQuizBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_banks do |t|
      t.string :questions
      t.string :correct_ans
      t.string :incorrect_ans1
      t.string :incorrect_ans2
      t.string :incorrect_ans3

      t.timestamps
    end
  end
end

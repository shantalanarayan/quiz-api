class QuizBankSerializer < ActiveModel::Serializer
  attributes :id, :questions, :correct_ans, :incorrect_ans1, :incorrect_ans2, :incorrect_ans3
end

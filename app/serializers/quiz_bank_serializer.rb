# frozen_string_literal: true

class QuizBankSerializer < ActiveModel::Serializer
  attributes :id, :questions, :correct_ans, :incorrect_ans1, :incorrect_ans2,
             :incorrect_ans3, :editable

  belongs_to :quiz
  # name this method anything that makes sense, then reference it above ^
  def editable
    scope == object.quiz.user
  end
end

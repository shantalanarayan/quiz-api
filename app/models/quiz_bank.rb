# frozen_string_literal: true

class QuizBank < ApplicationRecord
  belongs_to :quiz
  validates :questions, :correct_ans, :incorrect_ans1, :incorrect_ans2,
            :incorrect_ans3, presence: true
end

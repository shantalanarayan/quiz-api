# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :quiz_banks, through: :quiz
  has_many :quizzes, dependent: :destroy
end

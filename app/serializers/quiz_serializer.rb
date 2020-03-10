# frozen_string_literal: true

class QuizSerializer < ActiveModel::Serializer
  attributes :id, :topic, :editable
  belongs_to :user
  has_many :quiz_banks

  def editable
    scope == object.user
  end
end

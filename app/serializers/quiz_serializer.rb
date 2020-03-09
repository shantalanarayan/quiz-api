# frozen_string_literal: true

class QuizSerializer < ActiveModel::Serializer
  attributes :id, :topic, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end

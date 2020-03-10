# frozen_string_literal: true

class Quiz < ApplicationRecord
  belongs_to :user
  has_many :quiz_banks
  validates :topic, :user, presence: true
end

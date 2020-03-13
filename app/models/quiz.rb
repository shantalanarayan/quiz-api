# frozen_string_literal: true

class Quiz < ApplicationRecord
  belongs_to :user
  has_many :quiz_banks, dependent: :destroy
  accepts_nested_attributes_for :quiz_banks, allow_destroy: true

  validates :topic, :user, presence: true
end

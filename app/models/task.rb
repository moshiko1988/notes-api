# frozen_string_literal: true
class Task < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy
end

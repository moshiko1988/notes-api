# frozen_string_literal: true
class List < ApplicationRecord
  belongs_to :user
  belongs_to :task
end

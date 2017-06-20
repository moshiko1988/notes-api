# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :lists
  has_many :tasks
end

# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :tasks, :lists

  def tasks
    object.tasks.pluck(:id)
  end

  def lists
    object.lists.pluck(:id)
  end
end

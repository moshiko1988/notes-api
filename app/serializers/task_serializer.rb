# frozen_string_literal: true
class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :editable, :lists

  def editable
    scope == object.user
  end

  def lists
    object.lists.pluck(:id)
  end

  def user
    object.user.id
  end
end

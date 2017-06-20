# frozen_string_literal: true
class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :task, :user, :editable

  def editable
    scope == object.user
  end

  def task
    object.task.id
  end

  def user
    object.user.id
  end
end

# frozen_string_literal: true
class AddRelationship < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :user, foreign_key: true, index: true
    add_reference :lists, :task, foreign_key: true, index: true
  end
end

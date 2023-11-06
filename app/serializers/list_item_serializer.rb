# frozen_string_literal: true

class TodoItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :done
end

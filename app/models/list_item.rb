# frozen_string_literal: true

class ListItem < ApplicationRecord
  validates_presence_of :name
end

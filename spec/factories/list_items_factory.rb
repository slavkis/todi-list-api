# frozen_string_literal: true

FactoryBot.define do
  factory :list_item do
    name { 'List Item' }
    done { false }
  end
end

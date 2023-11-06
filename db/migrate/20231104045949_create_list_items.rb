# frozen_string_literal: true

class CreateListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :list_items do |t|
      t.string :name
      t.boolean :done, default: false

      t.timestamps
    end
  end
end

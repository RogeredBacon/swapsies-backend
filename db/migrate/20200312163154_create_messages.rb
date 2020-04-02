# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :user_conversation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end

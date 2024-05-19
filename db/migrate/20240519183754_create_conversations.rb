class CreateConversations < ActiveRecord::Migration[7.1]
  def change
    create_table :conversations, id: :uuid do |t|
      t.string :title
      t.string :model, default: 'gpt-4o', null: false

      t.timestamps
    end
  end
end

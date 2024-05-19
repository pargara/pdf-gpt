class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions, id: :uuid do |t|
      t.references :conversation, null: false, foreign_key: true, type: :uuid
      t.text :question

      t.timestamps
    end
  end
end

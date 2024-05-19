class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers, id: :uuid do |t|
      t.belongs_to :conversation, null: false, foreign_key: true, type: :uuid
      t.text :answer

      t.timestamps
    end
  end
end

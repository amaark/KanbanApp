class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :column, foreign_key: true
      t.string :card_name, null: false
      t.string :description
      t.string :topic
      t.string :type

      t.timestamps
    end
  end
end

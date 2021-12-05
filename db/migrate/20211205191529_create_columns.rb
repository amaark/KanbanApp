class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.belongs_to :board, foreign_key: true
      t.string :column_title, null: false
      t.integer :limit

      t.timestamps
    end
  end
end

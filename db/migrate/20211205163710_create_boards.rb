class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :board_title, null: false

      t.timestamps
    end
  end
end

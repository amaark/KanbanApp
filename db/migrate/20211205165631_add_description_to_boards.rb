class AddDescriptionToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :board_description, :string
  end
end

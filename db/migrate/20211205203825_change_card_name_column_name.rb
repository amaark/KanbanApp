class ChangeCardNameColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :card_name, :card_title
  end
end

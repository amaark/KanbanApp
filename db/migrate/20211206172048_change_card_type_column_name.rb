class ChangeCardTypeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :type, :card_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

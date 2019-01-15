class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :villains, :heros_id, :hero_id
  end
end

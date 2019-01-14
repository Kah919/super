class CreateVillains < ActiveRecord::Migration[5.2]
  def change
    create_table :villains do |t|
      t.string :name
      t.string :city
      t.string :super_powers
      t.integer :heros_id
      t.timestamps
    end
  end
end

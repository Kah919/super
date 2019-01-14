class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :city
      t.string :super_powers
      t.timestamps
    end
  end
end

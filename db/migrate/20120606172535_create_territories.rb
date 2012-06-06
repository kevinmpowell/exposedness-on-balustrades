class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.references :zone
      t.string :name

      t.timestamps
    end
    add_index :territories, :zone_id
  end
end

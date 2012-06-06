class CreateTerritoryOwnerships < ActiveRecord::Migration
  def change
    create_table :territory_ownerships do |t|
      t.references :territory
      t.references :player
      t.integer :army_count

      t.timestamps
    end
    add_index :territory_ownerships, :territory_id
    add_index :territory_ownerships, :player_id
  end
end

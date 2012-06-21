class CreateNeighbors < ActiveRecord::Migration
  def change
    create_table :neighbors do |t|
    	t.references :territory
    	t.references :neighbor
    end

    add_index :neighbors, :territory_id
    add_index :neighbors, :neighbor_id
  end
end

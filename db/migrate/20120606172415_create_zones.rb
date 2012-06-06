class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.references :board
      t.string :name

      t.timestamps
    end
    add_index :zones, :board_id
  end
end

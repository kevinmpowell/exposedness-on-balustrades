class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :board
      t.references :territory
      t.string :name

      t.timestamps
    end
    add_index :cards, :board_id
    add_index :cards, :territory_id
  end
end

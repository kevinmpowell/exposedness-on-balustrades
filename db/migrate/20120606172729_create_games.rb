class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :board
      t.references :ruleset

      t.timestamps
    end
    add_index :games, :board_id
    add_index :games, :ruleset_id
  end
end

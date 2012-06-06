class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :user
      t.references :game
      t.integer :order
      t.string :color

      t.timestamps
    end
    add_index :players, :user_id
    add_index :players, :game_id
  end
end

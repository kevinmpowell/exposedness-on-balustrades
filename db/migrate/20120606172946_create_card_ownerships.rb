class CreateCardOwnerships < ActiveRecord::Migration
  def change
    create_table :card_ownerships do |t|
      t.references :card
      t.references :player

      t.timestamps
    end
    add_index :card_ownerships, :card_id
    add_index :card_ownerships, :player_id
  end
end

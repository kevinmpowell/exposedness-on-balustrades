class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :order
      t.references :ruleset

      t.timestamps
    end
    add_index :phases, :ruleset_id
  end
end

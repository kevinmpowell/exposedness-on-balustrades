class AddReinforcementsToZones < ActiveRecord::Migration
  def change
    add_column :zones, :reinforcements, :integer
  end
end

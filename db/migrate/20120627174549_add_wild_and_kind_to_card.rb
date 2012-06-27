class AddWildAndKindToCard < ActiveRecord::Migration
  def change
    add_column :cards, :wild, :boolean
    add_column :cards, :kind, :string
  end
end

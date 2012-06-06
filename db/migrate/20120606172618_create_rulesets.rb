class CreateRulesets < ActiveRecord::Migration
  def change
    create_table :rulesets do |t|
      t.string :name

      t.timestamps
    end
  end
end

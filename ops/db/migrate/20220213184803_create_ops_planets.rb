class CreateOpsPlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :ops_planets do |t|
      t.string :name

      t.timestamps
    end
  end
end

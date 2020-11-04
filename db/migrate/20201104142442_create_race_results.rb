class CreateRaceResults < ActiveRecord::Migration[6.0]
  def change
    create_table :race_results do |t|
      t.integer :position
      t.references :race, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end

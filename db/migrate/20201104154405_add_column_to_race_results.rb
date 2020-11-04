class AddColumnToRaceResults < ActiveRecord::Migration[6.0]
  def change
    add_column :race_results, :fastest_lap, :boolean, default: false
  end
end

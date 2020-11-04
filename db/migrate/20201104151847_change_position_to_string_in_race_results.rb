class ChangePositionToStringInRaceResults < ActiveRecord::Migration[6.0]
  def change
    change_column :race_results, :position, :string
  end
end

class AddPenaltyToRaceResults < ActiveRecord::Migration[6.0]
  def change
    add_column :race_results, :penalty, :integer, default: 0
  end
end

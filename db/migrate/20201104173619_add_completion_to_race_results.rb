class AddCompletionToRaceResults < ActiveRecord::Migration[6.0]
  def change
    add_column :race_results, :completion, :integer, default: 100
  end
end

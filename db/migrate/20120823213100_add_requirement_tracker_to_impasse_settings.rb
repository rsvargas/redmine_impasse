class AddRequirementTrackerToImpasseSettings < ActiveRecord::Migration[4.2]
  def self.up
    add_column :impasse_settings, :requirement_tracker, :string
  end

  def self.down
    remove_column :impasse_settings, :requirement_tracker
  end
end

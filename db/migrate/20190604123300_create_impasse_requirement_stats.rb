class CreateImpasseRequirementStats < ActiveRecord::Migration[5.1]
  def self.up
    create_table :impasse_requirement_stats do |t|
    end
  end

  def self.down
    drop_table :impasse_requirement_stats
  end
end


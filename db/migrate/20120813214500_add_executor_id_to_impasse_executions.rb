class AddExecutorIdToImpasseExecutions < ActiveRecord::Migration[4.2]
  def self.up
    add_column :impasse_executions, :executor_id, :integer
  end

  def self.down
    remove_column :impasse_executions, :executor_id
  end
end

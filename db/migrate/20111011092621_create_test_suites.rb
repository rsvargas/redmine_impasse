class CreateTestSuites < ActiveRecord::Migration[5.1]
  def self.up
    create_table :impasse_test_suites do |t|
      t.column :details, :text
    end
  end

  def self.down
    drop_table :impasse_test_suites
  end
end

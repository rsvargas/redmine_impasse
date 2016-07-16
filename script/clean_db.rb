require "active_record"
require "yaml"

path = File.expand_path(File.dirname(__FILE__)) + "/../../../config/database.yml"
config = YAML.load_file(path)
# 環境を切り替える
ActiveRecord::Base.establish_connection(config["production"])

tables = ActiveRecord::Base.connection.tables

for t in tables
  if t.start_with?("impasse_")
    ActiveRecord::Migration.drop_table t
  end
end

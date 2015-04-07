class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :companies, :people, :staff
  end
end

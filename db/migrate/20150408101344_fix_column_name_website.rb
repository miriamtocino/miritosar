class FixColumnNameWebsite < ActiveRecord::Migration
  def self.up
    rename_column :companies, :website_url, :website
  end
end

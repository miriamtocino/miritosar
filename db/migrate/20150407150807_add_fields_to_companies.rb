class AddFieldsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :description, :text
    add_column :companies, :founded_in, :date
  end
end

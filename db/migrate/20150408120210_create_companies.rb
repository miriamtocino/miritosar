class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :logo
      t.text :description
      t.date :founded_in
      t.integer :staff

      t.timestamps null: false
    end
  end
end

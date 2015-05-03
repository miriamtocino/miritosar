class AddLastNameUsernameUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :last_name, :string
  end
end

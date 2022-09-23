class AddNameToUsers < ActiveRecord::Migration[7.0]
  def chang
    add_column :users, :name, :string
  end
end

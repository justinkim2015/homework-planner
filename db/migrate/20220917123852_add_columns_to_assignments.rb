class AddColumnsToAssignments < ActiveRecord::Migration[7.0]
  def change
    add_column :assignments, :name, :string
    add_column :assignments, :length, :integer
  end
end

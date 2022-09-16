class AddColumnToHomeworks < ActiveRecord::Migration[7.0]
  def change
    add_column :homeworks, :name, :string
    add_column :homeworks, :length, :integer
  end
end

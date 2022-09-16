class ChangeColumnInLesson < ActiveRecord::Migration[7.0]
  def change
    change_column :lessons, :date, :string
  end
end

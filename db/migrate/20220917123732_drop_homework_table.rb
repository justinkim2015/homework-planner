class DropHomeworkTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :homeworks
  end
end

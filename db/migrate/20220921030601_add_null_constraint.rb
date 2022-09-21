class AddNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :assignments, :name, false
    change_column_null :assignments, :length, false
    change_column_null :assignments, :lesson_id, false

    change_column_null :lessons, :rank, false
    change_column_null :lessons, :date, false
    change_column_null :lessons, :time, false
    change_column_null :lessons, :user_id, false
  end
end

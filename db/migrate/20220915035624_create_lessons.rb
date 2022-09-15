class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :rank
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end

class AddReferenceToHomework < ActiveRecord::Migration[7.0]
  def change
    add_reference :homeworks, :lesson
  end
end

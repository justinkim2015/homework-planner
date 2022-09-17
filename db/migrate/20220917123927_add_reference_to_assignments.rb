class AddReferenceToAssignments < ActiveRecord::Migration[7.0]
  def change
    add_reference :assignments, :lesson
  end
end

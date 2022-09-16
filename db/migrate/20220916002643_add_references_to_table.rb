class AddReferencesToTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :lessons, :user
  end
end

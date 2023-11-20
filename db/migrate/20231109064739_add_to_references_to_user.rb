class AddToReferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :employee_type, foreign_key: true
  end
end

class AddDepartmentsTousers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :department, index: true
  end
end

class RemovecolumnFromLeaveType < ActiveRecord::Migration[6.0]
  def change
    remove_column :leavetypes, :start_t
    remove_column :leavetypes, :end_date
    remove_column :leavetypes, :status

  end
end

class RemovestatToFromLeaveType < ActiveRecord::Migration[6.0]
  def change
    remove_column :leavetypes, :start_to
  end
end

class RemovestatusToLeaveRequest < ActiveRecord::Migration[6.0]
  def change
    remove_column :leave_requests, :status
  end
end

class AddstatusToLeaveRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :leave_requests, :status, :boolean
  end
end

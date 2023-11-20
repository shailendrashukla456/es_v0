class AddReferencesToleaveRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :leave_requests, :user, foreign_key: true
  end
end

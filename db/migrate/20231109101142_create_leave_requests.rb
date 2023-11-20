class CreateLeaveRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :leave_requests do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :leavetype, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class LeaveRequest < ApplicationRecord
  belongs_to :leavetype
  belongs_to :user
end

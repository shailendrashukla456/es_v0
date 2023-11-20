class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :employee_type
end

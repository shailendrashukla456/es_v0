class Department < ApplicationRecord
    has_many :employees
    has_many :users

end

json.extract! employee, :id, :name, :email, :password, :address, :contact, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)

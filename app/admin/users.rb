ActiveAdmin.register User, as: "Employee" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
   permit_params :email, :name, :contact, :address, :salary, :department_id, :employee_type_id, :remember_created_at
  
   index do
    selectable_column
    id_column
    column :name
    column :email
    column :contact
    column :address
    column :department_id do |obj|
      department = Department.find_by(id: obj.department_id)
      department.department_name if department
    end
    column :EmployeeTypes do |obj|
      EmployeeType.find(obj.employee_type_id).emp_type
    end
      
    column :created_at
    actions
  end
  

  filter :name
  filter :email
  
  filter :contact
  filter :address
  filter :created_at

  form do |f|
    f.inputs do
      
      f.input :name
      f.input :email
     
      f.input :contact
      f.input :address
      f.input :department, as: :select, collection: Department.where.not(department_name: 'admin').map{ |a| [a.department_name, a.id] }
      f.input :employee_type, as: :select, collection: EmployeeType.where.not(emp_type: 'admin').map{ |a| [a.emp_type, a.id] }
      
    end
    f.actions
  end
end

class CreateEmployeeTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_types do |t|
      t.string :emp_type
      t.string :salary

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :contact
      t.string :address
      t.string :salary
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end

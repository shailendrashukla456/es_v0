class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :total_paid
      t.string :payment_mode
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :employee_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

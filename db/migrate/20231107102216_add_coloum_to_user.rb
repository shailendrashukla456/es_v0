class AddColoumToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :contact, :string
    add_column :users, :address, :string
    add_column :users, :salary, :string
    
  end
end

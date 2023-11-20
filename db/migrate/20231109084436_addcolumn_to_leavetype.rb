class AddcolumnToLeavetype < ActiveRecord::Migration[6.0]
  def change
    add_column :leavetypes, :start_to, :date
    add_column :leavetypes, :end_date, :date
    add_column :leavetypes, :status, :boolean
    
  end
end

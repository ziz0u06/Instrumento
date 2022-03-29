class AddNewColumnsToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :price, :float
    add_column :instruments, :availability_date, :date
    add_reference :instruments, :user, foreign_key: true
  end
end

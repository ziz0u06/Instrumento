class AddEndDateToInstruments < ActiveRecord::Migration[6.1]
  def change
    rename_column :instruments, :availability_date, :start_date
    add_column :instruments, :end_date, :date
  end
end

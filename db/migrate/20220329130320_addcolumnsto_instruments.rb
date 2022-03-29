class AddcolumnstoInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :name, :string
  end
end

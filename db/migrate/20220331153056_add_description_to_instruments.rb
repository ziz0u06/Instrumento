class AddDescriptionToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :description, :text
  end
end

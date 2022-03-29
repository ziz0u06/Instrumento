class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|

      t.timestamps
    end
  end
end

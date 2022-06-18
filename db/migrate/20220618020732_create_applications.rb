class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end

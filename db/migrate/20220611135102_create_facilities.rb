class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end

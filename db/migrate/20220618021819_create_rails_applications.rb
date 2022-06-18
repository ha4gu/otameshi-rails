class CreateRailsApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :rails_applications do |t|
      t.string :ruby_version, null: false
      t.string :rails_version, null: false

      t.timestamps
    end
  end
end

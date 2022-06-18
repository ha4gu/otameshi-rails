class AddDelegatedTypeColumnsToApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :applicationable_type, :string
    add_column :applications, :applicationable_id, :bigint
  end
end

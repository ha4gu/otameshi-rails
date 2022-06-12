class AddTypeToFacility < ActiveRecord::Migration[6.1]
  def change
    add_column :facilities, :type, :string
  end
end

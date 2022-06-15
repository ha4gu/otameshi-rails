class CreateOrderedImages < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_images do |t|
      t.integer :position
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end

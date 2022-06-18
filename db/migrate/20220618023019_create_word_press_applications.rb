class CreateWordPressApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :word_press_applications do |t|
      t.string :php_version, null: false
      t.string :wordpress_version, null: false

      t.timestamps
    end
  end
end

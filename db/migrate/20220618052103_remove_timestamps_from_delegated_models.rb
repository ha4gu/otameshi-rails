class RemoveTimestampsFromDelegatedModels < ActiveRecord::Migration[6.1]
  def change
    remove_columns :rails_applications, :created_at, :updated_at,
                   type: :datetime, precision: 6, null: false
    remove_columns :word_press_applications, :created_at, :updated_at,
                   type: :datetime, precision: 6, null: false
  end
end

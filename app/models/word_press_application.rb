class WordPressApplication < ApplicationRecord
  include Applicationable

  validates :php_version, presence: true
  validates :wordpress_version, presence: true

  rails_admin do
    navigation_label "アプリケーション"
    weight 5

    object_label_method :name

    list do
      field :id
      field :name
      field :php_version
      field :wordpress_version
      field :created_at, :timestamp
      field :updated_at, :timestamp
    end

    show do
      field :id
      field :name
      field :php_version
      field :wordpress_version
      field :created_at, :timestamp do
        visible true
      end
      field :updated_at, :timestamp do
        visible true
      end
    end

    edit do
      field :name, :string
      field :php_version
      field :wordpress_version
    end
  end
end

# == Schema Information
#
# Table name: word_press_applications
#
#  id                :bigint           not null, primary key
#  php_version       :string(255)      not null
#  wordpress_version :string(255)      not null
#

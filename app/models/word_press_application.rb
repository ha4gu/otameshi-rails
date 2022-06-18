class WordPressApplication < ApplicationRecord
  validates :php_version, presence: true
  validates :wordpress_version, presence: true

  rails_admin do
    list do
      field :id
      field :php_version
      field :wordpress_version
      field :created_at
      field :updated_at
    end

    show do
      field :id
      field :php_version
      field :wordpress_version
      field :created_at
      field :updated_at
    end

    edit do
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
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

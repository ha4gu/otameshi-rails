class Application < ApplicationRecord
  validates :name, presence: true

  rails_admin do
    object_label_method do
      :name
    end

    list do
      field :id
      field :name
      field :created_at
      field :updated_at
    end

    show do
      field :id
      field :name
      field :created_at
      field :updated_at
    end

    edit do
      field :name, :string
    end
  end
end

# == Schema Information
#
# Table name: applications
#
#  id         :bigint           not null, primary key
#  name       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

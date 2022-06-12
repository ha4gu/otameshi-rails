class Facility < ApplicationRecord
  validates :name, presence: true

  scope :only_aquarium, -> { where(type: "Aquarium") }
  scope :only_zoo, -> { where(type: "Zoo") }

  rails_admin do
    object_label_method :name

    list do
      scopes [nil, :only_aquarium, :only_zoo]

      field :id
      field :type
      field :name
      field :created_at
      field :updated_at
    end

    show do
      field :id
      field :type
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
# Table name: facilities
#
#  id         :bigint           not null, primary key
#  name       :text(65535)      not null
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

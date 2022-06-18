class RailsApplication < ApplicationRecord
  include Applicationable

  validates :ruby_version, presence: true
  validates :rails_version, presence: true

  rails_admin do
    list do
      field :id
      field :name
      field :ruby_version
      field :rails_version
      field :created_at, :timestamp
      field :updated_at, :timestamp
    end

    show do
      field :id
      field :name
      field :ruby_version
      field :rails_version
      field :created_at, :timestamp do
        visible true
      end
      field :updated_at, :timestamp do
        visible true
      end
    end

    edit do
      field :name, :string
      field :ruby_version
      field :rails_version
    end
  end
end

# == Schema Information
#
# Table name: rails_applications
#
#  id            :bigint           not null, primary key
#  rails_version :string(255)      not null
#  ruby_version  :string(255)      not null
#

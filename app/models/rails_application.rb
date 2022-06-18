class RailsApplication < ApplicationRecord
  include Applicationable

  validates :ruby_version, presence: true
  validates :rails_version, presence: true

  rails_admin do
    list do
      field :id
      field :ruby_version
      field :rails_version
    end

    show do
      field :id
      field :ruby_version
      field :rails_version
    end

    edit do
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

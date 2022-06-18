class Application < ApplicationRecord
  delegated_type :applicationable, types: Applicationable::TYPES

  validates :name, presence: true
end

# == Schema Information
#
# Table name: applications
#
#  id                   :bigint           not null, primary key
#  applicationable_type :string(255)
#  name                 :text(65535)      not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  applicationable_id   :bigint
#

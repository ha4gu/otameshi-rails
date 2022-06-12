class Facility < ApplicationRecord
  validates :name, presence: true
end

# == Schema Information
#
# Table name: facilities
#
#  id         :bigint           not null, primary key
#  name       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

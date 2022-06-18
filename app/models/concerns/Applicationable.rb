module Applicationable
  TYPES = %w[RailsApplication WordPressApplication]

  extend ActiveSupport::Concern

  included do
    has_one :application, as: :applicationable, required: true, touch: true, dependent: :destroy
  end
end

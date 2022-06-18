module Applicationable
  TYPES = %w[RailsApplication WordPressApplication]

  extend ActiveSupport::Concern

  included do
    has_one :application, as: :applicationable, required: true, touch: true, dependent: :destroy
    accepts_nested_attributes_for :application

    delegate :created_at, :updated_at, to: :application

    validates :name, presence: true, length: { maximum: 65535 }

    after_validation do
      # 名前が未入力の場合にエラーが重複するのを回避するためapplication.name側のエラーを削除する
      errors.delete("application.name") if errors[:name].present?
    end

    def name
      application&.name
    end

    def name=(name)
      self.application = Application.new unless application
      application.name = name
    end
  end
end

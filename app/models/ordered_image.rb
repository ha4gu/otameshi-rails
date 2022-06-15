class OrderedImage < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  has_one_attached :image

  validates :image, attached: true, content_type: %w[image/jpg image/jpeg image/png image/webp]
  validates :position, allow_blank: true, numericality: { only_integer: true, greater_than: 0 }

  acts_as_list scope: [:imageable_type, :imageable_id]

  # ポリモーフィック関連をSTIと組み合わせる場合には親モデル名をTypeカラムに格納させる必要がある
  # 参考: https://api.rubyonrails.org/v6.1/classes/ActiveRecord/Associations/ClassMethods.html#module-ActiveRecord::Associations::ClassMethods-label-Polymorphic+Associations
  def imageable_type=(class_name)
    super(class_name.constantize.base_class.to_s)
  end

  rails_admin do
    visible false

    edit do
      field :image do
        required true
      end
      field :position
    end
  end
end

# == Schema Information
#
# Table name: ordered_images
#
#  id             :bigint           not null, primary key
#  imageable_type :string(255)
#  position       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :bigint
#
# Indexes
#
#  index_ordered_images_on_imageable  (imageable_type,imageable_id)
#

require "rails_helper"

RSpec.describe OrderedImage, type: :model do
  it { is_expected.to validate_attached_of(:image) }
  it { is_expected.to validate_content_type_of(:image).allowing("image/jpg", "image/jpeg", "image/png", "image/webp") }
  it { is_expected.to validate_content_type_of(:image).rejecting("image/gif", "image/bmp", "text/plain", "text/xml") }

  it do
    described_class.acts_as_list_no_update do
      expect(described_class.new).to validate_numericality_of(:position).allow_nil.only_integer.is_greater_than(0)
    end
  end
end

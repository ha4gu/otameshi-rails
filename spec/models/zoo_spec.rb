require "rails_helper"

RSpec.describe Zoo, type: :model do
  describe "バリデーション" do
    it { is_expected.to validate_presence_of(:name) }
  end
end

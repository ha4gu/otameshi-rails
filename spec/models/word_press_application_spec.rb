require "rails_helper"

RSpec.describe WordPressApplication, type: :model do
  describe "バリデーション" do
    it { is_expected.to validate_presence_of(:php_version) }
    it { is_expected.to validate_presence_of(:wordpress_version) }
  end
end

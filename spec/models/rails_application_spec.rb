require "rails_helper"

RSpec.describe RailsApplication, type: :model do
  describe "バリデーション" do
    it { is_expected.to validate_presence_of(:ruby_version) }
    it { is_expected.to validate_presence_of(:rails_version) }
  end
end

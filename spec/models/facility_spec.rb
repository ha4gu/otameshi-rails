require "rails_helper"

RSpec.describe Facility, type: :model do
  describe "バリデーション" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "スコープ" do
    let!(:facility_instance) { create(:facility) }
    let!(:aquarium_instance) { create(:aquarium) }
    let!(:zoo_instance) { create(:zoo) }

    describe ".only_aquarium" do
      subject(:described_scope) { described_class.only_aquarium }

      it { expect(described_scope).to include(aquarium_instance) }
      it { expect(described_scope).not_to include(facility_instance) }
      it { expect(described_scope).not_to include(zoo_instance) }
    end

    describe ".only_zoo" do
      subject(:described_scope) { described_class.only_zoo }

      it { expect(described_scope).to include(zoo_instance) }
      it { expect(described_scope).not_to include(aquarium_instance) }
      it { expect(described_scope).not_to include(facility_instance) }
    end
  end
end

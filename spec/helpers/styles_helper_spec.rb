require "rails_helper"

RSpec.describe StylesHelper do
  describe "color_class" do
    context "srm between 1 and 10" do
      let(:style) { build_stubbed(:style, srm_max: 10) }

      it "returns a pale color class" do
        expect(helper.color_class(style)).to include("amber darken-2")
      end
    end

    context "srm between 11 and 20" do
      let(:style) { build_stubbed(:style, srm_max: 20) }

      it "returns a less pale color class" do
        expect(helper.color_class(style)).to include("amber darken-4")
      end
    end

    context "srm between 21 and 30" do
      let(:style) { build_stubbed(:style, srm_max: 30) }

      it "returns a dark color class" do
        expect(helper.color_class(style)).to include("deep-orange darken-4")
      end
    end

    context "srm higher than 30" do
      let(:style) { build_stubbed(:style, srm_max: 40) }

      it "returns a darker color class" do
        expect(helper.color_class(style)).to include("brown darken-4")
      end
    end
  end
end

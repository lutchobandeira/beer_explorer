require "rails_helper"

RSpec.describe BeersHelper do
  describe "#display_info" do
    let(:info) { Faker::Lorem.word }

    context "useful info" do
      it "displays info" do
        expect(helper.display_info(info)).to eq(info)
      end
    end

    context "missing info" do
      it "displays default no-info indicator" do
        expect(helper.display_info(nil)).to eq(t("beers.show.no_info"))
      end
    end
  end

  describe "#display_brewery_chips" do
    context "no brewery" do
      let(:beer) { build_stubbed(:beer, breweries: nil) }

      it "does not render partial" do
        expect(helper).to_not receive(:render)
        helper.display_brewery_chips(beer)
      end
    end

    context "with brewery" do
      let(:beer) { build_stubbed(:beer, :complete) }

      it "renders partial" do
        expect(helper).to receive(:render).and_return(nil)
        helper.display_brewery_chips(beer)
      end
    end
  end

  describe "#display_description" do
    context "no description" do
      let(:beer) { build_stubbed(:beer, description: nil) }

      it "does not render partial" do
        expect(helper).to_not receive(:render)
        helper.display_description(beer)
      end
    end

    context "with description" do
      let(:beer) { build_stubbed(:beer, :complete) }

      it "renders partial" do
        expect(helper).to receive(:render).and_return(nil)
        helper.display_description(beer)
      end
    end
  end

  describe "#display_glass" do
    context "no glass" do
      let(:beer) { build_stubbed(:beer, glass: nil) }

      it "does not render partial" do
        expect(helper).to_not receive(:render)
        helper.display_glass(beer)
      end
    end

    context "with glass" do
      let(:beer) { build_stubbed(:beer, :complete) }

      it "renders partial" do
        expect(helper).to receive(:render).and_return(nil)
        helper.display_glass(beer)
      end
    end
  end

  describe "#display_food_pairings" do
    context "no food pairings" do
      let(:beer) { build_stubbed(:beer, food_pairings: nil) }

      it "does not render partial" do
        expect(helper).to_not receive(:render)
        helper.display_food_pairings(beer)
      end
    end

    context "with food pairings" do
      let(:beer) { build_stubbed(:beer, :complete) }

      it "renders partial" do
        expect(helper).to receive(:render).and_return(nil)
        helper.display_food_pairings(beer)
      end
    end
  end

  describe "#glass_image" do
    let(:glass) { "Pint" }

    it "renders the glass' picture" do
      output = helper.glass_image(glass)
      expect(output).to include("img")
      expect(output).to include(glass)
      expect(output).to include("jpg")
    end
  end
end

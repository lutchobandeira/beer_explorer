require "rails_helper"

RSpec.describe BeersController do
  describe "GET #index" do
    let!(:style) { create(:style) }
    let!(:beers) { create_list(:beer, 2, :complete, style: style) }

    context "no filters" do
      it "assigns beers" do
        get :index
        expect(assigns(:beers).size).to eq(beers.size)
      end
    end

    context "with filters" do
      let!(:filtered_style) { create(:style) }
      let!(:filtered_beer)  { create(:beer, :complete, style_original_id: filtered_style.original_id) }

      it "filters beers" do
        get :index, q: { style_original_id_eq: filtered_style.original_id }
        expect(assigns(:beers).size).to eq(1)
        expect(assigns(:beers)).to include(filtered_beer)
      end
    end
  end

  describe "GET #show" do
    let!(:style) { create(:style) }
    let!(:beer)  { create(:beer, style: style) }

    it "assigns beer" do
      get :show, id: beer.id
      expect(assigns(:beer)).to be_a Beer
      expect(assigns(:beer)).to eq(beer)
    end
  end
end

require "rails_helper"

RSpec.describe BeersController do
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

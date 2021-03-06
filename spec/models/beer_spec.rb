require "rails_helper"

RSpec.describe Beer do
  describe "Attributes" do
    it { should respond_to(:original_id) }
    it { should respond_to(:name) }
    it { should respond_to(:description) }
    it { should respond_to(:food_pairings) }
    it { should respond_to(:original_gravity) }
    it { should respond_to(:abv) }
    it { should respond_to(:ibu) }
    it { should respond_to(:glass) }
    it { should respond_to(:style_original_id) }
    it { should respond_to(:style_summary) }
    it { should respond_to(:is_organic) }
    it { should respond_to(:labels) }
    it { should respond_to(:serving_temperature) }
    it { should respond_to(:serving_temperature_display) }
    it { should respond_to(:status) }
    it { should respond_to(:status_display) }
    it { should respond_to(:available_id) }
    it { should respond_to(:available) }
    it { should respond_to(:beer_variation_id) }
    it { should respond_to(:beer_variation) }
    it { should respond_to(:year) }
    it { should respond_to(:breweries) }
  end

  describe "Methods" do
    describe "#short_name" do
      let(:last_two_names) { "#{Faker::Lorem.word} #{Faker::Lorem.word}" }
      let!(:beer) { build_stubbed(:beer, name: "#{Faker::Lorem.word} #{last_two_names}") }

      it "displays the last two names" do
        expect(beer.short_name).to eq(last_two_names)
      end
    end
  end

  describe "Validations" do
    it { should validate_presence_of(:original_id) }
  end

  describe "Associations" do
    it { should belong_to(:style) }
  end
end

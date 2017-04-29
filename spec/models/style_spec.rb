require "rails_helper"

RSpec.describe Style do
  describe "Attributes" do
    it { should respond_to(:original_id) }
    it { should respond_to(:category_original_id) }
    it { should respond_to(:name) }
    it { should respond_to(:short_name) }
    it { should respond_to(:description) }
    it { should respond_to(:ibu_min) }
    it { should respond_to(:ibu_max) }
    it { should respond_to(:abv_min) }
    it { should respond_to(:abv_max) }
    it { should respond_to(:srm_min) }
    it { should respond_to(:srm_max) }
    it { should respond_to(:og_min) }
    it { should respond_to(:og_max) }
    it { should respond_to(:fg_min) }
    it { should respond_to(:fg_max) }
  end

  describe "Validations" do
    it { should validate_presence_of(:original_id) }
  end

  describe "Associations" do
    it { should have_many(:beers) }
  end
end

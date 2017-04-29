require "rails_helper"

RSpec.describe Style do
  describe "Validations" do
    it { should validate_presence_of(:original_id) }
  end
end

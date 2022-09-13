require 'rails_helper'

RSpec.describe Shelf, type: :model do
  context "validates" do 
    it "is valid without attributes" do
      expect(Shelf.new).to be_valid
    end

    it "is valid with correct attributes" do
      shelf = Shelf.new(number: 2)
      expect(shelf).to be_valid
    end
  end
end

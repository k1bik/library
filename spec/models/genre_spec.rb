require 'rails_helper'

RSpec.describe Genre, type: :model do
  context "validates" do 
    it "is valid without attributes" do
      expect(Genre.new).to be_valid
    end

    it "is valid with correct attributes" do
      genre = Genre.new(title: "Horror")
      expect(genre).to be_valid
    end
  end
end

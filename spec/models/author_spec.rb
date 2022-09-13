require 'rails_helper'

RSpec.describe Author, type: :model do
  context "validates" do 
    it "is not valid without attributes" do
      expect(Author.new).not_to be_valid
    end

    it "is valid with correct attributes" do
      author = Author.new(name: "name1", age: "19")
      expect(author).to be_valid
    end

    it "is not valid with not valid attributes" do
      author = Author.new(age: "18")
      expect(author).not_to be_valid
    end
  end
end

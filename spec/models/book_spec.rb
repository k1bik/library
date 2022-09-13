require 'rails_helper'

RSpec.describe Book, type: :model do
  let!(:author){ Author.create(name: "Max", age: "19") }
  let!(:genre){ Genre.create(title: "Horror") }
  let!(:shelf){ Shelf.create(number: 1) }

  context "with 2 or more books" do
    it "expected to see correct books" do
      book1 = author.books.create!(:title => "title1", :genre_id => genre.id, :shelf_id => shelf.id)
      book2 = author.books.create!(:title => "title2", :genre_id => genre.id, :shelf_id => shelf.id)
      expect(author.reload.books).to eq([book1, book2])
    end
  end

  context "validates" do 
    it "is not valid without attributes" do
      expect(Book.new).not_to be_valid
    end

    it "is valid with correct attributes" do
      book = Book.new(title: "title1", author_id: author.id, genre_id: genre.id, shelf_id: shelf.id)
      expect(book).to be_valid
    end

    it "is not valid with not valid attributes" do
      book = Book.new(title: "title1", genre_id: genre.id, shelf_id: shelf.id)
      expect(book).not_to be_valid
    end
  end
end

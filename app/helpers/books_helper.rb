module BooksHelper
  def getAuthor(id)
    Author.find_by(id: id)
  end

  def getGenre(id)
    Genre.find_by(id: id)
  end

  def getShelf(id)
    Shelf.find_by(id: id)
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "== Creating default library =="

shelf_1 = Shelf.create(number: 1)
shelf_2 = Shelf.create(number: 2)
shelf_3 = Shelf.create(number: 3)

author_1 = Author.create(name: "Pushlin", age: "26")
author_2 = Author.create(name: "Tolskoy", age: "46")
author_3 = Author.create(name: "Lermontov", age: "57")

genre_1 = Genre.create(title: "Sci-Fi")
genre_2 = Genre.create(title: "Horror")
genre_3 = Genre.create(title: "Adventure")

books = Book.create([{ title: "Star Wars", production_year: '1999', author_id: author_2.id, genre_id: genre_1.id, shelf_id: shelf_1.id},
                      { title: "Kolobok", production_year: '1890', author_id: author_2.id, genre_id: genre_2.id, shelf_id: shelf_3.id},
                      { title: "Masha and Medved", production_year: '1674', author_id: author_1.id, genre_id: genre_2.id, shelf_id: shelf_2.id},
                      { title: "Buratino", production_year: '1789', author_id: author_1.id, genre_id: genre_3.id, shelf_id: shelf_2.id},
                      { title: "Silence", production_year: '1998', author_id: author_2.id, genre_id: genre_1.id, shelf_id: shelf_1.id},
                      { title: "Last of us", production_year: '2010', author_id: author_2.id, genre_id: genre_1.id, shelf_id: shelf_1.id},
                      { title: "White car", production_year: '2011', author_id: author_3.id, genre_id: genre_3.id, shelf_id: shelf_3.id}])

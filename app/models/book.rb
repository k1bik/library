class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  belongs_to :shelf
end

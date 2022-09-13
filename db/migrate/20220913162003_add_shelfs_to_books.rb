class AddShelfsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :shelf, null: true, foreign_key: true
  end
end

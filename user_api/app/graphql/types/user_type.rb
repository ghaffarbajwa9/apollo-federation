# frozen_string_literal: true
module Types
  class UserType < Types::BaseObject
    extend_type
    key fields: 'id'
    
    field :id, ID, null: false
    field :email, String
    field :name, String
    field :books, [Types::BookType], null: true
    field :books_count, Integer, null: true

    def books_count
      object.books.size
    end
  end
end

# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :articles, [Types::ArticleType], null: false

    def articles
      Article.all
    end

    field :article, Types::ArticleType, null: false do 
      argument :id, ID, required: true
    end

    def article(id: )
      Article.find(id)
    end
  end
end

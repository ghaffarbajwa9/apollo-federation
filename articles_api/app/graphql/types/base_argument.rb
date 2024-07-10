# frozen_string_literal: true

module Types
  class BaseArgument < GraphQL::Schema::Argument
    include ApolloFederation::Schema
  end
end
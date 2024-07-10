# frozen_string_literal: true

module Types
  class BaseEnum < GraphQL::Schema::Enum
    include ApolloFederation::Enum

    enum_value_class BaseEnumValue
  end
end
